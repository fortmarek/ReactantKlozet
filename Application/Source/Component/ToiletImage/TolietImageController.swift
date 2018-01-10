//
//  TolietImageController.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/10/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant

final class ToiletImageController: ControllerBase<Void, ToiletImageRootView> {
    struct Properties {
        let toiletImage: UIImage
    }
    
    private let properties: Properties
    
    init(properties: Properties) {
        self.properties = properties
        super.init()
        rootView.componentState = properties.toiletImage 
    }
}
