//
//  CityListViewModel.swift
//  Weatherly
//
//  Created by Axel Collard Bovy on 20/06/2019.
//  Copyright © 2019 Kairos. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class CityListViewModel: BindableObject {
    public let didChange = PassthroughSubject<CityListViewModel, Never>()
    
    let service = CityService()
    
    var cities: [City] = [] {
        didSet {
            didChange.send(self)
        }
    }
    
    func load() {
        service.load { cities in
            self.cities = cities
        }
    }
}

