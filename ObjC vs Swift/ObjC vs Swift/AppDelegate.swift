//
//  AppDelegate.swift
//  ObjC vs Swift
//
//  Created by JING ZHANG on 11/1/15.
//  Copyright © 2015 JING ZHANG. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func loadStuff() {
        let cities = [
        
            City(name: "Toronto", population: 3000000),
            City(name: "Vancouver", population: 5)
            
        ]
        let canada = Country (name: "Canada", cities: cities)
        
        _ = canada.findCityWithName("Vancouver")
        _ = canada.cityWithLagestPopulation
    }

}

