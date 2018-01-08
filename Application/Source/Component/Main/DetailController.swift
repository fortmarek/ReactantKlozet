//
//  DetailController.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/7/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant

final class DetailController: ControllerBase<Void, DetailRootView> {
    
    override init() {
        super.init(title: "Greeter")
        
        
        // An initial state for our rootView
        //rootView.componentState = (greeting: "" , name: "")
    }
    
    // Act on actions produced from RootView
//    override func act(on action: GreeterAction) {
//        switch action {
//        case .greetingChanged(let greeting):
//            rootView.componentState = (greeting: "Hello \(greeting)!", name: greeting)
//        }
//    }
}
