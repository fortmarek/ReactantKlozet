//
//  KlozetModule.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/8/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

final class KlozetModule: DependencyModule {
    
    let detailToiletService: DetailToiletService
    
    init() {
        detailToiletService = DetailToiletService()
    }
}
