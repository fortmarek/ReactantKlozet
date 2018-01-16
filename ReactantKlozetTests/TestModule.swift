//
//  TestModule.swift
//  ReactantKlozetTests
//
//  Created by Marek Fořt on 1/15/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

@testable import ReactantKlozet 

final class TestModule: DependencyModule {
    
    let toiletService: ToiletService
    let imageService: ImageService
    
    init() {
        imageService = ImageService()
        toiletService = ToiletService(imageService: imageService)
    }
}
