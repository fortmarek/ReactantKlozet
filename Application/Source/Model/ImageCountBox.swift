//
//  ImageCountBox.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/10/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import DataMapper

struct ImageCountBox: Deserializable {
    let imageCount: Int
    
    init(_ data: DeserializableData) throws {
        imageCount = data["image_count"].get(or:0)
    }
}
