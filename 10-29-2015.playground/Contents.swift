//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//optional

//closure

//properties

//class struct


class Legs {
    var count: Int = 0
}


class Animal {
    
    var name: String = ""
    var legs: Legs? = Legs()
    
    var uppercaseName: String {
        
        get {
            return name.uppercaseString
        }
        set {
            name = newValue
        }
    }
}

let dog = Animal()

dog.name

dog.legs


class number {
    
    var n: Int
    init(n: Int){
        self.n = n
    }
}

var aNumber = number(n:3)
var bNumber = aNumber

bNumber.n = 5

aNumber.n

// 第一：override

class SuperNumber: NSNumber {
    
    override func getValue(value: UnsafeMutablePointer<Void>) {
        super.getValue(value)
    }
}


//第二：extension

extension NSNumber {
    func superCoolGetter() -> Int {
        return 5
    }
}

let n = NSNumber(int: 4)
n.superCoolGetter()


//第三：protocol - code seperated

protocol dancable {
    func dance()
}

class Person: NSNumber, dancable {
    func dance() {
    }
}


//第四：enum

enum TypesOfVeggies: String {
    case Carrots
    case Tomatoes
    case Celery
}
let carrot = TypesOfVeggies.Carrots
carrot.rawValue

func eatVeggies(veggie: TypesOfVeggies) {
    
}

eatVeggies(TypesOfVeggies.Carrots)

//Initialize

//class Car: NSString {
//    
//    var cupHolder: String
//    
//    required init(cupHolder: String) {
//        self.cupHolder = cupHolder
//        super.init()
//    }
//    
////    convenience init() {
////        self.init(cupHolder:"Cool")

//    deinit{
//        
//    }
//    }
//}
//
//let car = Car(cupHolder: "Cool")
//
//let newCar = Car()

