//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

for count in 0..<10 {
    
    print(count)
}

var stri: String? = "Hello"

stri

stri = nil



var animals = ["cows","ducks","beef"]

animals[1] = "geese"

var cute = [
    
"cow": "somewhat",
"ducks": "cute",
"beef":"scary"
]


cute["beef"]

for animal in animals {
    cute
}


func transmogrify(species: String) -> Int {
    
    switch species {
        
        case "ducks":
            return 0
        case "human":
            return 1
        default:return -1
    }
    
    
    
}
transmogrify("ducks")

let x: Double = 1

let y: Int = 1

if (true) {
    print("true")
}

let array:[Int] = [1,2,3,5]

let arrays:[Int] = []





