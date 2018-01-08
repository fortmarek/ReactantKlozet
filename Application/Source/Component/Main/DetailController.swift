//
//  DetailController.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/7/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant

final class DetailController: ControllerBase<Void, DetailRootView> {
    
    struct Dependencies {
        let toiletService: ToiletService
    }
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
        super.init()
    }

    override func afterInit() {
        dependencies.toiletService.getToilets().subscribe(onNext: { [weak self] result in
            //TODO: Handle errors
            guard let toilets = result.value, toilets.isEmpty == false else {return}
            self?.rootView.componentState = toilets[10]
        }).disposed(by: lifetimeDisposeBag)
    }
}

