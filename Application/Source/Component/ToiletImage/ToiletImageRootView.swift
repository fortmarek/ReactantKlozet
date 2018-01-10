//
//  ToiletImageRootView.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/10/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant

final class ToiletImageRootView: ViewBase<UIImage, Void> {
    let toiletImageView = UIImageView()
    
    override func update() {
        toiletImageView.image = componentState
    }
    
    
}
