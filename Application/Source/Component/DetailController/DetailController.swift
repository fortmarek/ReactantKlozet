//
//  DetailController.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/7/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant
import Kingfisher

final class DetailController: ControllerBase<(toilets: [Toilet], selectedIndex: Int), DetailRootView> {
    
    struct Dependencies {
        let toiletService: ToiletService
    }
    
    struct Reactions {
        let openImage: (UIImage) -> Void
    }
    
    private let dependencies: Dependencies
    private let reactions: Reactions

    
    init(dependencies: Dependencies, reactions: Reactions) {
        self.dependencies = dependencies
        self.reactions = reactions
        super.init()
        componentState = (toilets: [], selectedIndex: 0)
    }

    override func afterInit() {
        dependencies.toiletService.getToilets().subscribe(onNext: { [weak self] result in
            //TODO: Handle errors
            guard let toilets = result.value, toilets.isEmpty == false else {return}
            self?.rootView.componentState.toilet  = toilets[0]
            self?.componentState.toilets = toilets
        }).disposed(by: lifetimeDisposeBag)
    }
    
    
    
    private func setToiletImage(_ imageCount: Int) {
        print(componentState.selectedIndex)
        guard componentState.toilets.isEmpty == false else {return}
        let toiletId: Int = componentState.toilets[componentState.selectedIndex].toiletId
        guard imageCount > 0 else {rootView.componentState.image = nil; return}
        if imageCount != 0 {
            guard let url = URL(string: "http://139.59.144.155/klozet/toilets_img/\(toiletId)/0.jpg") else {return}
            ImageDownloader.default.downloadImage(with: url, completionHandler: { [weak self] (image, _, _, _) in
                self?.rootView.componentState.image = image
            })
        }
    }
    
    private func downloadToiletImages() {
        
    }
    
    override func update() {
        dependencies.toiletService.getToiletsImageCount(with: componentState.selectedIndex).subscribe(onNext: { [weak self] result in
            //TODO: Handle errors
            guard let imageCount = result.value else {return}
            self?.setToiletImage(imageCount)
        }).disposed(by: lifetimeDisposeBag)
    }
    
    override func act(on action: DetailRootView.ActionType) {
        switch action {
        case .nextToilet:
            var selectedIndex: Int = componentState.selectedIndex
            let toilets: [Toilet] = componentState.toilets
            
            selectedIndex = selectedIndex + 1 < toilets.endIndex ? selectedIndex + 1 : 0
            rootView.componentState.toilet = toilets[selectedIndex]
            componentState.selectedIndex = selectedIndex
        case .showToiletImage:
            guard let toiletImage = rootView.componentState.image else {return}
            reactions.openImage(toiletImage)
        }
        
    }
    
    
}

