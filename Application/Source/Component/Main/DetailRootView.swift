//
//  DetailRootView.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/7/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant
import RxSwift

enum DetailAction {
    case nextToilet
}

final class DetailRootView: ViewBase<Toilet, DetailAction> {
    
    let noView = UIView()
    let photoImageView = UIImageView() 
    let priceTitleLabel = UILabel()
    let priceLabel = UILabel()
    let separator = UIView()
    let addressLabel = UILabel()
    let subaddressLabel = UILabel()
    let nextToiletButton = UIButton()
    
    override var actions: [Observable<DetailAction>] {
        return [
            nextToiletButton.rx.tap.rewrite(with: .nextToilet)
        ]
    }
    
    override func update() {
        priceLabel.text = componentState.price
        addressLabel.text = componentState.title
        subaddressLabel.text = componentState.subtitle
    }
    
    override func loadView() {
        backgroundColor = .white
        noView.backgroundColor = .coolGrey 
    }
}
