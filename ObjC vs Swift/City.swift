//
//  City.swift
//  ObjC vs Swift
//
//  Created by JING ZHANG on 11/1/15.
//  Copyright © 2015 JING ZHANG. All rights reserved.
// 第一 files, name, class
// 第二 types,initianizer
// 第三 methods, arrays, control flow
//第四 properties, getters, computed properties
//第五 instantiating objects and calling methods differences

import UIKit

class City: NSObject {
    
    let name: String
    let population: Int
    
    init(name: String, population: Int) {
        self.name = name
        self.population = population
    }

}

class Country {
    
    let name: String
    let cities: [City]
    
    init(name: String, cities:[City]){
        
        self.name = name
        self.cities = cities
    }
    
    func findCityWithName(name: String) -> City? {
        for city in cities {
            if city.name == name {
                return city
            }
        }
        
        return nil
    }
    
    var cityWithLagestPopulation: City {
        var maxPopulation = 0
        var largestCity: City = cities [0]
        for city in cities {
            if city.population > maxPopulation {
                largestCity = city
                maxPopulation = city.population
            }
           
        }
        return largestCity
    }
}
