//
//  singleClass.swift
//  singleClass
//
//  Created by JING ZHANG on 10/22/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
/*
 
 以下有三种方法实现单例模式，支持懒初始化和线程安全
 
 全局变量
 结构
 dispatch_once
 
 */

import UIKit

class singleClass: NSObject {
    
    var value:Int = 0
    
    //global variable
    static let singleDefault2 = singleClass()
    
    //GCD method
    
    
    class func shareDefault() -> singleClass {
        struct once {
            static var onceToken:dispatch_once_t = 0
            static var shareSingle: singleClass! = nil
        }
        
        dispatch_once(&once.onceToken){
            once.shareSingle = singleClass()
        }
        
        return once.shareSingle
    }
    
    
    
    //struct
    
    class func shareDefault2() -> singleClass {
        struct single {
            static var singleDefault = singleClass()
        }
        
        return  single.singleDefault
    }
    private override init() {}
}
