//
//  APIService.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/8/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Fetcher
import RxSwift
import Reactant
import Result
import UIKit

private struct Endpoints: EndpointProvider {
    static func getToilets() -> GET<Void, ToiletsBox> {
        return create("http://139.59.144.155/klozet/en")
    }
    
    static func getImageCount(with toiletId: Int) -> GET<Void, ImageCountBox>{
        return create("http://139.59.144.155/klozet/toilet/\(toiletId)")
    }
}

final class ToiletService {
    
    private let fetcher = Fetcher(requestPerformer: AlamofireRequestPerformer())
    private let imageService: ImageService
    
    init(imageService: ImageService) {
        self.imageService = imageService
        fetcher.register(requestEnhancers: RequestLogger(defaultOptions: RequestLogging.all))
    }
    
    func getToilets() -> Observable<Result<[Toilet], FetcherError>> {
        return fetcher.rx.request(Endpoints.getToilets())
            .asResult()
            .mapValue {$0.toilets}
    }
    
    func getToiletsImageCount(with toiletId: Int) -> Observable<Result<Int, FetcherError>> {
        return fetcher.rx.request(Endpoints.getImageCount(with: toiletId))
        .asResult()
        .mapValue {$0.imageCount}
    }
    
    
}
