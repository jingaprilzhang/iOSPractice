//
//  ViewController.swift
//  tableViewTips
//
//  Created by JING ZHANG on 10/22/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    //what you wanna test
    let testValue: NSString = "This is a test message\n Today is 10/22/2016\n Located at Beijing\n Copyright@ Jing Zhang"
    
    var dict: Dictionary <String, String> = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //get rid of lines between
        tableView.tableFooterView = UIView()
        
        //method 2: Height
        tableView.estimatedRowHeight = 60
        
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //use view with label tag
        let label = cell.contentView.viewWithTag(1000) as! UILabel
        
        label.text = testValue as String
        
        if dict[String(indexPath.row)] == "0" {
            label.numberOfLines = 0
        }else {
            label.numberOfLines = 1
        }
        
        return cell;
    }
    
    /*
    
    //method 1: Height parameter
     
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let att = [NSFontAttributeName:UIFont.systemFont(ofSize: 17)]
        return testValue.boundingRect(with: CGSize(width:300,height:0), options:.usesLineFragmentOrigin, attributes: att, context: nil).size.height + 20
        
    }
 
     */
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        let label = cell?.contentView.viewWithTag(1000) as! UILabel
        
        tableView.beginUpdates()
        
        if label.numberOfLines == 0 {
            label.numberOfLines = 1
            dict[String(indexPath.row)] = "1"
        }else {
            label.numberOfLines = 0
            dict[String(indexPath.row)] = "0"
        }
        
        tableView.endUpdates()
    }
    
    override func viewDidLayoutSubviews() {
        self.tableView.separatorInset = UIEdgeInsets.zero
        self.tableView.layoutMargins = UIEdgeInsets.zero
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
    }
    
}

