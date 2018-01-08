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
    static func getToilet(_ toiletId: Int) -> GET<Void, Toilet> {
        return create("http://139.59.144.155/klozet/toilet/\(toiletId)")
    }
}

final class DetailToiletService {
    
    private let fetcher = Fetcher(requestPerformer: AlamofireRequestPerformer())
    
    init() {
        fetcher.register(requestEnhancers: RequestLogger(defaultOptions: RequestLogging.all))
    }
    
    func getToilet(id: Int) -> Observable<Result<Toilet, FetcherError>> {
        return fetcher.rx.request(Endpoints.getToilet(id))
            .asResult()
    }
}
