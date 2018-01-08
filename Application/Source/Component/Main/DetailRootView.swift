//
//  DetailRootView.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/7/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant

final class DetailRootView: ViewBase<Toilet, Void> {
    
    
    let noView = UIView()
    let photoImageView = UIImageView() 
    let openingTimesLabel = UILabel()
    let openTimesLabel = UILabel()
    
    override func update() {
        openTimesLabel.text = componentState.price
    }
    
    override func loadView() {
        backgroundColor = .white
        noView.backgroundColor = .coolGrey 
    }
    
}
