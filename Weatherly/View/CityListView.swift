//
//  CityListView.swift
//  Weatherly
//
//  Created by Axel Collard Bovy on 20/06/2019.
//  Copyright © 2019 Kairos. All rights reserved.
//

import SwiftUI
import Combine

struct CityListView : View {
    @ObjectBinding var cityListViewModel = CityListViewModel()
    
    var body: some View {
        NavigationView {
            List(cityListViewModel.cities.identified(by: \.id)) { city in
//                NavigationButton(destination: CityWeatherView(selectedCity: city)) {
                    CityRowView(city: city)
//                }
            }.navigationBarTitle(Text("Cities"))
        }.onAppear {
            self.cityListViewModel.load()
        }
    }
}

struct CityRowView : View {
    var city: City
    
    var body: some View {
        Text("\(city.name), \(city.countryCode)")
    }
}


#if DEBUG
struct CityListView_Previews : PreviewProvider {
    static var previews: some View {
        CityListView()
    }
}

struct CityRowView_Previews : PreviewProvider {
    static var previews: some View {
        CityRowView(city: City(id: -1, name: "New York", countryCode: "US", coordinate: Coordinate(longitude: -1, latitude: -1)))
    }
}
#endif
