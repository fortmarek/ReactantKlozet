//
//  OpenTimes.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/8/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import DataMapper
import Reactant

struct OpenTimes {
    let hours: [String]?
    let days: [Int]?
    let isNonstop: Bool?
}

extension OpenTimes: Serializable, Deserializable {
    
    init(_ data: DeserializableData) throws {
        hours = data["hours"].get()
        days =  data["days"].get()
        isNonstop = data ["nonstop"].get()
    }
    
    func serialize(to data: inout SerializableData) {
        data["hours"].set(hours)
        data["days"].set(days)
        data["nonstop"].set(isNonstop)
    }
}

extension OpenTimes: Equatable {
    static func ==(lhs: OpenTimes, rhs: OpenTimes) -> Bool {
        return lhs.hours ?? [] == rhs.hours ?? [] && lhs.days ?? [] == rhs.days ?? [] && lhs.isNonstop == rhs.isNonstop
    }
}


