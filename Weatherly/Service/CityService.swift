//
//  CityService.swift
//  Weatherly
//
//  Created by Axel Collard Bovy on 20/06/2019.
//  Copyright © 2019 Kairos. All rights reserved.
//

import Foundation

struct CityService {
    
    func load(completion: ([City]) -> Void) {
        var cities: [City] = []
        if let path = Bundle.main.path(forResource: "../city.list", ofType: "json") {
            do {
                let fileUrl = URL(fileURLWithPath: path)
                // Getting data from JSON file using the file URL
                let jsonData = try Data(contentsOf: fileUrl, options: .mappedIfSafe)
                cities = try JSONDecoder().decode([City].self, from: jsonData)
            } catch {
                // Handle error here
            }
        }
        completion(cities)
    }
}
