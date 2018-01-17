//
//  DetailRootView.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/7/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant
import RxSwift
import CoreLocation 

enum DetailAction {
    case nextToilet
    case showToiletImage
    case showToiletList
}

final class DetailRootView: ViewBase<(toilet: Toilet, image: UIImage?), DetailAction> {
    
    let toiletImageView = UIImageView()
    let photoImageView = UIImageView()
    let imageToiletButton = UIButton()
    let priceLabel = UILabel()
    let addressLabel = UILabel()
    let subaddressLabel = UILabel()
    let nextToiletButton = UIButton()
    let listButton = UIButton()
    
    override var actions: [Observable<DetailAction>] {
        return [
            nextToiletButton.rx.tap.rewrite(with: .nextToilet),
            imageToiletButton.rx.tap.rewrite(with: .showToiletImage),
            listButton.rx.tap.rewrite(with: .showToiletList)
        ]
    }
    
    override func afterInit() {
        componentState = (toilet: Toilet(title: "", subtitle: "", coordinate: CLLocationCoordinate2D(), openTimes: [], price: "", toiletId: 0, imageCount: 0), image: nil)
    }
    
    override func update() {
        priceLabel.text = componentState.toilet.price
        addressLabel.text = componentState.toilet.title
        subaddressLabel.text = componentState.toilet.subtitle
        toiletImageView.image = componentState.image
        photoImageView.isHidden = componentState.image != nil
    }
    
    override func loadView() {
        backgroundColor = .white
        toiletImageView.backgroundColor = .coolGrey
    }
}
