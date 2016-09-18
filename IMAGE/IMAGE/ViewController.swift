//
//  ViewController.swift
//  IMAGE
//
//  Created by JING ZHANG on 11/27/15.
//  Copyright © 2015 JING ZHANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    //image picker
    @IBAction func imagePicker(sender: UIButton) {
        
        let nextController = UIImagePickerController()
        
        self.presentViewController(nextController, animated: true, completion: nil)
    }

    //activity interface
    @IBAction func activity(sender: UIButton) {
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func alert(sender: UIButton) {
        let alert = UIAlertController()
        let ok = UIAlertAction(title: "OK", style:.Default) {
            action in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
//        alert.title = "Test alert"
//        alert.message = "This is a test"
        
        alert.addAction(ok)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
}

