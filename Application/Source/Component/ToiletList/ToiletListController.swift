//
//  ToiletListController.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/10/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant

final class ToiletListController: ControllerBase<Void, ToiletListRootView>, UITableViewDelegate {
    
    struct Properties {
        let toilets: [Toilet]
    }
    
    private let properties: Properties
    
    init(properties: Properties) {
        self.properties = properties
        super.init()
        
        rootView.componentState = .items(properties.toilets)
    }
}
