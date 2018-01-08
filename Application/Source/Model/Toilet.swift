//
//  Toilet.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/8/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import DataMapper
import Reactant
import CoreLocation

struct Toilet: Deserializable, Serializable {
    
    //MKAnnotation properties
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    let openTimes: [OpenTimes]
    let price: String
    let toiletId: Int
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D, openTimes: [OpenTimes], price: String, toiletId: Int) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        self.openTimes = openTimes
        self.price = price
        self.toiletId = toiletId
    }
    
    init(_ data: DeserializableData) throws {
        let address: Address = try data["address"].get()
        title = address.mainAddress
        subtitle = address.subAddress
        openTimes = try data["open_times"].get()
        price = data["price"].get(or: "Free")
        let coordinates: [Double] = try data["coordinates"].get()
        coordinate = CLLocationCoordinate2D(latitude: coordinates[1], longitude: coordinates[0])
        toiletId = try data["toilet_id"].get()
    }
    
    func serialize(to data: inout SerializableData) {
        let address: Address = Address(mainAddress: title ?? "", subAddress: subtitle ?? "")
        data["address"].set(address)
        data["open_times"].set(openTimes)
        data["price"].set(price)
        data["toilet_id"].set(toiletId)
    }
    
}
