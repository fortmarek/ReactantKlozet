//
//  ToiletsBox.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/8/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import DataMapper

struct ToiletsBox: Deserializable {
    let toilets: [Toilet]
    
    init(_ data: DeserializableData) throws {
        toilets = data["toilets"].get(or: [])
    }
}
