//
//  Address.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/8/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import DataMapper
import Reactant

struct Address {
    let mainAddress: String
    let subAddress: String
}

extension Address: Serializable, Deserializable {
    
    init(_ data: DeserializableData) throws {
        mainAddress = try data["main_address"].get()
        subAddress =  try data["sub_address"].get()
    }
    
    func serialize(to data: inout SerializableData) {
        data["main_address"].set(mainAddress)
        data["sub_address"].set(subAddress)
    }
}

extension Address: Equatable {
    static func ==(lhs: Address, rhs: Address) -> Bool {
        return lhs.mainAddress == rhs.mainAddress && lhs.subAddress == rhs.mainAddress
    }
}

