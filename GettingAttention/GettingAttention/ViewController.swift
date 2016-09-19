//
//  ViewController.swift
//  GettingAttention
//
//  Created by JING ZHANG on 5/30/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userOutput: UILabel!
    
    @IBAction func doAlert(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Alert Me Button Selected", message: "I need your attention Now!", preferredStyle: UIAlertControllerStyle.Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil)
        
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func doMultiButtonAlert(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Alert with Buttons Selected", message: "Options are good for people!", preferredStyle: UIAlertControllerStyle.Alert)
        
        let nowAction = UIAlertAction(title: "Do something now", style: UIAlertActionStyle.Default) { (alertAction: UIAlertAction!) -> Void in
            self.userOutput.text = "Pressed Now"
        }
        
        let laterAction = UIAlertAction(title: "Do something later", style: UIAlertActionStyle.Default) { (alertAction: UIAlertAction!) -> Void in
            self.userOutput.text = "Pressed Later"
            
        }
        
        let cancelAction = UIAlertAction(title: "Never Do it", style: UIAlertActionStyle.Cancel) { (alertAction: UIAlertAction!) -> Void in
            self.userOutput.text = "Pressed Never"
        }
        
        alertController.addAction(nowAction)
        alertController.addAction(laterAction)
        alertController.addAction(cancelAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
        }
    
    @IBAction func doAlertInput(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Email Address", message: "Please enter your email address below:", preferredStyle: UIAlertControllerStyle.Alert)
        
        alertController.addTextFieldWithConfigurationHandler { (textField: UITextField!) -> Void in
            textField.placeholder = "Email Address"
            textField.keyboardType = UIKeyboardType.EmailAddress
        }
        
        
        let defaultAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (alertAction: UIAlertAction!) -> Void in
          
            //MARK: how to use emailaddress vs textfield
            
            let emailaddress: String = (alertController.textFields![0] as UITextField).text!
           
            self.userOutput.text = "Entered '\(emailaddress)'"
        }
        
        alertController.addAction(defaultAction)
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func doActionSheet(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Available Actions", message: "Choose something from the list", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let negotiateAction = UIAlertAction(title: "Negotiate", style: UIAlertActionStyle.Default) { (alertAction:UIAlertAction!) -> Void in
            self.userOutput.text = "Pressed Negotiate"
        }
        
        let compromiseAction = UIAlertAction(title: "Compromise", style: UIAlertActionStyle.Default) { (alertAction:UIAlertAction!)-> Void in
            self.userOutput.text = "Pressed Compromise"
        }
        
        let destroyAction = UIAlertAction(title: "Destroy", style: UIAlertActionStyle.Destructive) { (alertAction:UIAlertAction!) -> Void in
            self.userOutput.text = "Pressed Destroy"
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) { (alertAction: UIAlertAction!) -> Void in
            self.userOutput.text = "Pressed Cancel"
        }
        
        alertController.addAction(negotiateAction)
        alertController.addAction(compromiseAction)
        alertController.addAction(destroyAction)
        alertController.addAction(cancelAction)
        
        if (alertController.popoverPresentationController != nil) {
            alertController.popoverPresentationController!.sourceView = sender as! UIButton
            alertController.popoverPresentationController!.sourceRect = (sender as! UIButton).bounds
        }
        
        presentViewController(alertController, animated: true, completion: nil)
        
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

