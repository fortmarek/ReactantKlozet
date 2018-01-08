//
//  APIService.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/8/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Fetcher
import RxSwift
import Reactant
import Result

private struct Endpoints: EndpointProvider {
    static func getToilets() -> GET<Void, ToiletsBox> {
        return create("http://139.59.144.155/klozet/en")
    }
}

final class ToiletService {
    
    private let fetcher = Fetcher(requestPerformer: AlamofireRequestPerformer())
    
    init() {
        fetcher.register(requestEnhancers: RequestLogger(defaultOptions: RequestLogging.all))
    }
    
    func getToilets() -> Observable<Result<[Toilet], FetcherError>> {
        return fetcher.rx.request(Endpoints.getToilets())
            .asResult()
            .mapValue {$0.toilets}
    }
}
