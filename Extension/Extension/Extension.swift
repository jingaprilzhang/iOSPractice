//
//  Extension.swift
//  Extension
//
//  Created by JING ZHANG on 10/22/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

import UIKit

extension NSString {
    func printSelf() -> Void {
        print(self)
    }
}

extension UIView {
    func movetoXwithDuration(toX:CGFloat, duration: Double){
        UIView.animate(withDuration: duration){
            self.frame.origin.x = toX
        }
    }
    
}

extension Int {
    var FloatValue: CGFloat {return CGFloat(self)}
    var DoubleValue: Double {return Double(self)}
}

extension UIImage {
    var height: CGFloat {return self.size.height}
    var width: CGFloat {return self.size.width}
    
    //compress image
    
    func imageCompress(targetWidth: CGFloat) -> UIImage {
        let targetHeight = (targetWidth/width) * height
        UIGraphicsBeginImageContext(CGSize(width:targetWidth,height:targetHeight))
        self.draw(in: CGRect(x:0,y:0, width:targetWidth, height:targetHeight))
        let newImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return newImage
    }
    
    
    func blurImage(value: NSNumber) -> UIImage {
        let context = CIContext(options: [kCIContextUseSoftwareRenderer:true])
        let ciImage = CoreImage.CIImage(image:self)
        let blurFilter = CIFilter(name: "CIGaussianBlur")
        blurFilter?.setValue(ciImage, forKey: kCIInputImageKey)
        blurFilter?.setValue(value, forKey: "inputRadius")
        let imageRef = context.createCGImage((blurFilter?.outputImage)!, from:(ciImage?.extent)!)
        let newImage = UIImage(cgImage: imageRef!)
        return newImage
    }
}
