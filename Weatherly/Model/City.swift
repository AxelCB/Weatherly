//
//  City.swift
//  Weatherly
//
//  Created by Axel Collard Bovy on 20/06/2019.
//  Copyright © 2019 Kairos. All rights reserved.
//

import Foundation

struct City: Codable {
    let id: Int
    let name: String
    let countryCode: String
    let coordinate: Coordinate
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case countryCode = "country"
        case coordinate = "coord"
    }
}

struct Coordinate: Codable {
    let longitude: Double
    let latitude: Double
    
    enum CodingKeys: String, CodingKey {
        case longitude = "lon"
        case latitude = "lat"
    }
}
