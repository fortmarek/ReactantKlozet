//
//  ImageService.swift
//  ticketportal-ios
//
//  Created by Tadeáš Kříž on 17/07/16.
//  Copyright © 2016 Ticketportal. All rights reserved.
//

import RxSwift
import RxCocoa
import Kingfisher
import Reactant


public enum DownloadableImage {
    case content(image: UIImage)
    // TODO implement reachability
    case offlinePlaceholder
}

public enum ImageDownloadError: Error {
    case specificError(Error)
    case unknownError
}

public extension UIImageView {
    
    var downloadableImage: AnyObserver<DownloadableImage> {
        return downloadableImageAnimated(nil)
    }
    
    // TODO Add support for transitions
    private func downloadableImageAnimated(_ transitionType: String?) -> AnyObserver<DownloadableImage> {
        return Binder(self) { imageView, image in
            for subview in imageView.subviews {
                subview.removeFromSuperview()
            }
            switch image {
            case .content(let image):
                imageView.rx.image.onNext(image)
            case .offlinePlaceholder:
                imageView.rx.image.onNext(nil)
                let label = UILabel(frame: imageView.bounds)
                label.textAlignment = .center
                label.font = UIFont.systemFont(ofSize: 35)
                label.text = "⚠️"
                imageView.addSubview(label)
            }
            }.asObserver()
    }
}

public class ImageService {
    public static let sharedImageService = ImageService()
    
    public let loadingImage = ActivityIndicator<String>(defaultAssociatedValue: "")
    
    public func image(
        from url: URL?,
        withPlaceholder placeholder: UIImage?,
        placeholderOnError: Bool = false,
        options: KingfisherOptionsInfo? = nil) -> Driver<DownloadableImage> {
        if let url = url {
            return image(from: url, withPlaceholder: placeholder, placeholderOnError: placeholderOnError, options: options)
        } else if let placeholder = placeholder {
            return Driver.just(DownloadableImage.content(image: placeholder))
        } else {
            return Driver.just(DownloadableImage.offlinePlaceholder)
        }
    }
    
    public func image(
        from url: URL,
        withPlaceholder placeholder: UIImage?,
        placeholderOnError: Bool = false,
        options: KingfisherOptionsInfo? = nil) -> Driver<DownloadableImage> {
        let placeholderOrBlankImage = DownloadableImage.content(image: placeholder ?? UIImage())
        
        return image(from: url, options: options)
            .map(DownloadableImage.content)
            .retry(3)
            .startWith(placeholderOrBlankImage)
            .asDriver(onErrorJustReturn: placeholderOnError ?
                placeholderOrBlankImage : DownloadableImage.offlinePlaceholder)
    }
    
    public func image(from url: URL, options: KingfisherOptionsInfo? = nil) -> Observable<UIImage> {
        return Observable.create { subscriber -> Disposable in
            
            let resource = ImageResource(downloadURL: url)
            KingfisherManager.shared.retrieveImage(with: resource, options: options, progressBlock: nil) { image, error, _, _ in
                if let image = image {
                    subscriber.onLast(image)
                } else if let error = error {
                    subscriber.onError(ImageDownloadError.specificError(error))
                } else {
                    subscriber.onError(ImageDownloadError.unknownError)
                }
            }
            
            return Disposables.create()
            }.trackActivity(in: loadingImage)
    }
}



