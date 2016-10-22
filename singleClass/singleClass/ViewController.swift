//
//  ViewController.swift
//  singleClass
//
//  Created by JING ZHANG on 10/22/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let single1 = singleClass.shareDefault()
        single1.value = 100
        let single2 = singleClass.shareDefault()
        print(single2.value)
        
        let single3 = singleClass.shareDefault2()
        single3.value = 200
        let single4 = singleClass.shareDefault2()
        print(single4)
        
        
        let single5 = singleClass.singleDefault2
        single5.value = 300
        let single6 = singleClass.singleDefault2
        print(single6)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

