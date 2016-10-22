//
//  EkoImage.swift
//  DBFM
//
//  Created by JING ZHANG on 10/22/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

import UIKit

class EkoImage: UIImageView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        //round corner
        
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width/2
        
        
        //frame
        
        self.layer.borderWidth = 4
        self.layer.borderColor = UIColor(colorLiteralRed: 1, green: 1, blue: 1, alpha: 0.7).cgColor
    }
    
    
    //rotation
    
    func onRotation() {
        
        var animation = CABasicAnimation(keyPath: "transform.roation")
        
        animation.fromValue = 0.0
        
        animation.toValue = M_PI * 2.0
        
        animation.duration = 20
        
        animation.repeatCount = 1000
        
        self.layer.add(animation, forKey: nil)
    }
    
}
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

