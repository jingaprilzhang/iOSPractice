//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    var name: String = "Initial Name"
    
    init(){
        
    }
    
    func Walk() {
        
        print("I am working")
    }
}

var a = Person()

a.name = "Alice" //propertity just display what we have

a.Walk()//method call class

class superman: Person {   // how to deifine a superclass and class
    
    var AlterEgoName: String = "Clark"
    
    override init() {
        super.init()
        super.name = "Super Duper"
    }
    
    func fly() {
        print("I am flying")
    }
    
    override func Walk() {
        print("I am walking really fast")
        
        super.Walk()
    }
}

var b = superman()

b.name
b.Walk()
b.fly()
b.AlterEgoName

class People {
    var ID: String
    var Age: Int
    init() {
        self.ID = "ID"
        self.Age = 10
    }
    
    func Update(id:String, age:Int){
        self.ID = id
        self.Age = age
    }
    
    func IncreaseAge(ageToIncreaseBy:Int) -> Int {
        
        self.Age += ageToIncreaseBy
        return self.Age //nothing will be executed afterwards
        
    }
    
    class func AveAge() -> Int {
        
        return 20
    }
}

var zhang = People()
zhang.ID
zhang.Age
zhang.Update("jing",age:25)
zhang.ID
zhang.Age

var newAge = zhang.IncreaseAge(5)
newAge

var c = People.AveAge() //instance object

var randomnumber = Int(arc4random_uniform(13) + 1)//change to int

String()

var sometest = "Jing"

String(format: "test%@", sometest)
String(format: "card%i", randomnumber)

var myarray: [String] = ["book", "cat","dog"]

myarray[1]

myarray.count

myarray.insert("card", atIndex: 0)

myarray.count

myarray[0]

myarray.append("tree")

myarray += ["elephant", "truck"]//[] must typed in

myarray.count

myarray.removeFirst()

myarray.count

var mySecondArray: [Int] = [Int]()
mySecondArray.append(3)
//when to use self, when to use super

var bb = 18

if bb < 10 {
    print ("hello")
    
} else if bb > 10 && bb < 20 { // TODO: or -> ||; equal -> == ; less than; more than >=;!=
    
    print ("in between")
    
} else {
    print("goodbye")
}



