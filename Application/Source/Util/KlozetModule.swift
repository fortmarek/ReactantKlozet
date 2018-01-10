//
//  KlozetModule.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/8/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

final class KlozetModule: DependencyModule {
    
    let toiletService: ToiletService
    let imageService: ImageService
    
    init() {
        imageService = ImageService()
        toiletService = ToiletService(imageService: imageService)
    }
}
