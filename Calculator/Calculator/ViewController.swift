//
//  ViewController.swift
//  Calculator
//
//  Created by JING ZHANG on 10/20/15.
//  Copyright © 2015 JING ZHANG. All rights reserved.
// ! unwrap for +

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyingANumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyingANumber {
            
            display.text = display.text! + digit
            
        } else {
        
        //print("digit = \(digit)" )
            
            display.text = digit
        
            userIsInTheMiddleOfTyingANumber = true
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

