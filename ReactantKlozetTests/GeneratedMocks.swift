// MARK: - Mocks generated from file: Application/Source/Component/ToiletDetail/DetailController.swift at 2018-01-16 15:08:34 +0000

//
//  DetailController.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/7/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.

import Cuckoo
@testable import ReactantKlozet

import Kingfisher
import Reactant

class MockDetailController: DetailController, Cuckoo.Mock {
    typealias MocksType = DetailController
    typealias Stubbing = __StubbingProxy_DetailController
    typealias Verification = __VerificationProxy_DetailController
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: DetailController?

    func spy(on victim: DetailController) -> Self {
        observed = victim
        return self
    }

    

    

    
    // ["name": "afterInit", "returnSignature": "", "fullyQualifiedName": "afterInit()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     override func afterInit()  {
        
            return cuckoo_manager.call("afterInit()",
                parameters: (),
                original: observed.map { o in
                    return { (args) in
                        let () = args
                         o.afterInit()
                    }
                })
        
    }
    
    // ["name": "setToiletImage", "returnSignature": "", "fullyQualifiedName": "setToiletImage(_: Int)", "parameterSignature": "_ imageCount: Int", "parameterSignatureWithoutNames": "imageCount: Int", "inputTypes": "Int", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "imageCount", "call": "imageCount", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "imageCount", type: "Int", range: CountableRange(1234..<1251), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     override func setToiletImage(_ imageCount: Int)  {
        
            return cuckoo_manager.call("setToiletImage(_: Int)",
                parameters: (imageCount),
                original: observed.map { o in
                    return { (args) in
                        let (imageCount) = args
                         o.setToiletImage(imageCount)
                    }
                })
        
    }
    
    // ["name": "update", "returnSignature": "", "fullyQualifiedName": "update()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     override func update()  {
        
            return cuckoo_manager.call("update()",
                parameters: (),
                original: observed.map { o in
                    return { (args) in
                        let () = args
                         o.update()
                    }
                })
        
    }
    
    // ["name": "act", "returnSignature": "", "fullyQualifiedName": "act(on: DetailRootView.ActionType)", "parameterSignature": "on action: DetailRootView.ActionType", "parameterSignatureWithoutNames": "action: DetailRootView.ActionType", "inputTypes": "DetailRootView.ActionType", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "action", "call": "on: action", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("on"), name: "action", type: "DetailRootView.ActionType", range: CountableRange(2229..<2265), nameRange: CountableRange(2229..<2231))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     override func act(on action: DetailRootView.ActionType)  {
        
            return cuckoo_manager.call("act(on: DetailRootView.ActionType)",
                parameters: (action),
                original: observed.map { o in
                    return { (args) in
                        let (action) = args
                         o.act(on: action)
                    }
                })
        
    }
    

    struct __StubbingProxy_DetailController: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        func afterInit() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("afterInit()", parameterMatchers: matchers))
        }
        
        func setToiletImage<M1: Cuckoo.Matchable>(_ imageCount: M1) -> Cuckoo.StubNoReturnFunction<(Int)> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: imageCount) { $0 }]
            return .init(stub: cuckoo_manager.createStub("setToiletImage(_: Int)", parameterMatchers: matchers))
        }
        
        func update() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("update()", parameterMatchers: matchers))
        }
        
        func act<M1: Cuckoo.Matchable>(on action: M1) -> Cuckoo.StubNoReturnFunction<(DetailRootView.ActionType)> where M1.MatchedType == DetailRootView.ActionType {
            let matchers: [Cuckoo.ParameterMatcher<(DetailRootView.ActionType)>] = [wrap(matchable: action) { $0 }]
            return .init(stub: cuckoo_manager.createStub("act(on: DetailRootView.ActionType)", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_DetailController: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        

        
        @discardableResult
        func afterInit() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("afterInit()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func setToiletImage<M1: Cuckoo.Matchable>(_ imageCount: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: imageCount) { $0 }]
            return cuckoo_manager.verify("setToiletImage(_: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func update() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("update()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func act<M1: Cuckoo.Matchable>(on action: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DetailRootView.ActionType {
            let matchers: [Cuckoo.ParameterMatcher<(DetailRootView.ActionType)>] = [wrap(matchable: action) { $0 }]
            return cuckoo_manager.verify("act(on: DetailRootView.ActionType)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class DetailControllerStub: DetailController {
    

    

    
     override func afterInit()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func setToiletImage(_ imageCount: Int)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func update()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func act(on action: DetailRootView.ActionType)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



