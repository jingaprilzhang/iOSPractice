//
//  ViewController.swift
//  Location
//
//  Created by JING ZHANG on 6/5/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
//    let locMan: CLLocationManager = CLLocationManager()
//    locMan.delegate = self
//    locMan.requestWhenInUseAuthorization()
//    locMan.startUpdatingLocation()

    
    func locationManager(manager:CLLocationManager!, didUpdateLocations locations:[AnyObject]!){
        let newLocation:CLLocation = locations[0] as! CLLocation
        
        var coordinateDesc: String = "Not Available"
        var altitudeDesc:String = "Not Available"
        
        if newLocation.horizontalAccuracy >= 0{
            coordinateDesc = "\(newLocation.coordinate.latitude),\(newLocation.coordinate.longitude)"
            coordinateDesc = coordinateDesc + " +/- \(newLocation.horizontalAccuracy) meters"
        }
        
        if newLocation.verticalAccuracy >= 0 {
            altitudeDesc = "\(newLocation.altitude)"
            altitudeDesc = altitudeDesc + "+/- \(newLocation.verticalAccuracy) meters"
        }
        
        NSLog("Lat/Long: \(coordinateDesc), Altitude: \(altitudeDesc) ")
    }

}

