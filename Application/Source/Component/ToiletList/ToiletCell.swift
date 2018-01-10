//
//  ToiletCell.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/10/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant

final class ToiletCell: ViewBase<Toilet, Void> {
    
    static let height: CGFloat = 83
    
    let addressLabel = UILabel()
    let subaddressLabel = UILabel()
    let priceLabel = UILabel()
    
    override func update() {
        addressLabel.text = componentState.title
        subaddressLabel.text = componentState.subtitle
        priceLabel.text = componentState.price
    }
}

