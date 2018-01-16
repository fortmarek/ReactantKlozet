//
//  DetailControllerTests.swift
//  ReactantKlozetTests
//
//  Created by Marek Fořt on 1/15/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Cuckoo
import Nimble
import Quick
@testable import ReactantKlozet

class DetailControllerSpec: QuickSpec {
    
    let testModule = TestModule()
    
    
    override func spec() {
        
        let dependecies = MockDetailController.Dependencies(toiletService: testModule.toiletService)
        let reactions = MockDetailController.Reactions(openImage: { _ in
            
        }) { _ in
            
        }
        
        
        
        describe(".getToilets") {
            context("Toilets are fetched successfully", {
                it("sets toilets") {
                    let mock = MockDetailController(dependencies: dependecies, reactions: reactions)
                    
                    stub(mock) { stub in
                        when(stub.setToiletImage(2)).then {
                            print($0)
                        }
                    }
                }
            })
        }
    }
}
