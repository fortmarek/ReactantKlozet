//
//  ToiletListController.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/10/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant

class ToiletListController: ControllerBase<Void, ToiletListRootView> {
    
    struct Properties {
        let toilets: [Toilet]
    }
    
    private let properties: Properties
    
    init(properties: Properties) {
        self.properties = properties
        super.init()
        
        rootView.componentState = properties.toilets
    }

}
