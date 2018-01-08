//
//  MainWireframe.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/8/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import UIKit
import Reactant
import RxSwift

final class MainWireframe: Wireframe {
    
    private let module: DependencyModule
    
    init(module: DependencyModule) {
        self.module = module
    }
    
    func entrypoint() -> UIViewController {
        let navigationController = UINavigationController()
        
        navigationController.push(controller: createDetailController())
        
        return navigationController
    }
    
    
    func createDetailController() -> DetailController {
        return create { provider in
            let dependencies = DetailController.Dependencies(detailToiletService: module.detailToiletService)
            
            return DetailController(dependencies: dependencies)
        }
    }
}
