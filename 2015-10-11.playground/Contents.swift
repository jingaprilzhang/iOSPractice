//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print ("Hello, world")

// Simple Values

var myVariable = 42

myVariable = 50

let myConstant = 42

let myConstants = 56.4

let implicitInteger = 70

let implicitDouble = 70.01

let explicitDouble: Double = 70.001
//doesn't matter if the colon is close to Double or not.

let explicitFloat: Float = 4.001

let label = "The width is "

let width = 94

let widthLabel = label + String(width) + " inch"

//simple addition by using the same type of values


let apples = 3

let oranges = 5

let appleSummary = "I have \(apples) apples."

let fruitSummary = "I have \(apples + oranges) oranges."

//let Total = "\(apples + oranges)"

//let total: Float = Total


let greeting = "Hello Jing Zhang"

//not sure about the question and need to ask Eric


var shopplist = ["egg","water","tulips","blue paint"]

shopplist[0]
print( shopplist[1], "\n", shopplist[2] )

//why not print???make sure no typo


let emptyArray = [String]()

var occupations = ["Malcolm", "Captain", "Kaylee", "Mechanic"]

occupations[1] = "Public Relations"

// You can use let and var to define a constant or variable, you can always change the value of a variable, but not a constant.

let emptyDcitionalry = [ String: Float]()
//don't understant why use : float???

shopplist = []

occupations = []

//one means string, one means number or value stuff

// so far I got it, to learn cs code, i need to get familiar with how to define variables/constants--Easy beginning

/////

// 2nd step: make conditionals: if/switch
// 2nd steps: make loops: for-in, for, while, repeat-while-4 kinds of syntax

let individualScores = [75, 43, 103, 87, 12]
//this code doesn't really need print function

var teamScore = 0

for score in individualScores {
    
    if score > 50 {
        
        teamScore = teamScore + 3
        
    } else {
        
        teamScore = teamScore + 1
    }
    
}

print(teamScore)

// why teamScore +=3 doesn't work???

var optionalString: String? = "Hello"

print(optionalString == nil)

// : use to define the type of the variable, such as string or float

var optionalName : String? = "John Appleseed"

var greetings = "Hello!"

if let name = optionalName {
    
    greetings = "Hello, \(name)"
}



// \() helps bring in a new variable value, either float or string



var optionalNames : String? = nil

var greetingss = "Hello!"

        if let name = optionalNames {
    
    greetingss = "Hello, \(name)"}

        else { greetingss = "Hello, Jing Zhang"}


// this if let code is skipped
// make sure you now what is the condition, what is the result
// how to sepearte this line and the lines before so that the varialbe doesn't affect each other in some sense

let vegetable = "red pepper"

switch vegetable {
    
case "celery":
    
    print ("Add some raisins and make ants on a log.")
    
case "cucumber", "watercress":
    
    print("That would make a good tea sanwich")

case let x where x.hasSuffix("pepper"):
    
    print("Is it a spicy \(x)?")
    
default:
    
    print("Everything tastes good in soup")
}

// Switch is match and over progress.

let interestingNumbers = [

"Prime": [2, 3, 5, 7, 11, 13],

"Fibonacci":[1, 1, 2, 3, 5, 8],
    
"Square": [1, 4, 9, 16, 25],
]

var largest = 0
var kinds = "Prime"

for (kind, numbers) in interestingNumbers {
    
    for number in numbers {
        
        if number > largest {
            
            largest = number
            
            kinds = kind
            
        }
    }
}

print(kinds, largest)


// so called progress times means the codes really print something

// clear about what is variable

var n = 2

while n < 100 {
    
    n = n * 2
}

print(n)

// pay attention to space

var m = 2

repeat {

m = m * 2

} while m < 100

print(m)

var firstForLoop = 0

for i in 0..<4 {
    
    firstForLoop += i
}

print(firstForLoop)

var secondForLoop = 0

for var i = 0; i < 4; ++i {
    
    secondForLoop += i
}

print(secondForLoop)

// Function

func greet(Name: String, Day: String, Lunch: String) -> String

{
    return " Hello \(Name), today is \(Day), today's lunch special is \(Lunch)."
}

greet("Bob", Day: "Tuesday", Lunch: "Salad")

func calculateStatistics(scores: [Int]) ->

    (min: Int, max: Int, sum: Int) {
        
        var min = scores[0]
        var max = scores[0]
        var sum = 0
    
        for score in scores {
            
            if score > max {
                
                max = score
                
            } else if score < min {
                
                min = score
            }
            
            sum += score
}

return (min, max, sum)

}

let statistics = calculateStatistics([5, 3, 100, 3, 9])

print(statistics.sum)

print(statistics.2)


//variable: int

// -> result


func sumof(numbers: Int...) -> Int {
    
    var sum = 0
    
    for number in numbers {
        
        sum += number
    }
    
    return sum
}

sumof()

sumof(42, 100, 12)


//from what to what 

func returnFifteen() -> Int {
    
    var y = 10
    
    func add() {
        
        y += 5
    }
    
    add()
    
    return y
}

returnFifteen()


func makeIncrementer() -> (Int -> Int){
    
    func addOne(number: Int) -> Int {
        
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncrementer()

increment(7)


func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    
    for item in list {
    
    if condition(item) {
    
    return true
    
    }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    
    return number < 10
}

var numbers = [20, 19, 7, 12]

hasAnyMatches(numbers, condition: lessThanTen)


// Bool means false/true


numbers.map( {
    
    (number: Int) -> Int in
    
    let result = 3 * number
    
    return result
}
)

let mapppedNumbers = numbers.map({number in 3 * number})

print(mapppedNumbers)

let sortedNumbers = numbers.sort { $0 > $1}

print(sortedNumbers)

enum Rank: Int {
    
    case Ace = 1
    
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    
    case Jack, Queen, King
    
    func simpleDescription() -> String {
        
        switch self {
            
        case . Ace:
            
            return "ace"
            
        case .Jack:
            
            return "jack"
        
        case .Queen:
            
            return "queen"
            
        case .King:
            
            return "king"
            
        default:
            
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Ace

let aceRawRawValue = ace.rawValue


var list = ["a": 1, "b": 2]

for (index, (letter, value)) in list.enumerate() {
    
    print("Item \(index): \(letter) \(value)")
}

for (index, element) in list.enumerate() {
    
    print("Item \(index): \(element)")
}

//**********2015-10-11

//过去的一周没有怎么学习，现在要加紧学习了！！！从现在开始，我要加强阅读对能力，这样我才能够进步！！！！

// Read 2 books and finish up with my homework stuff. Yeah!

// https://mhm5000.gitbooks.io/swift-cheat-sheet/


// Basics 2015-10-11

print("Hello world")

var myVariables = 42

myVariables = 40

let pi = 3.1415926

let (x,y) = (10,20)

var explictDouble: Float = 1000.0001

var explictDoubles: Double = 1000.0001

//Float not accurate, Double more accurate

let labels = "some text " + String(myVariables)

let piText = "Pi = \(pi)"

var optionalStrings: String? = "Optional"

optionalStrings = nil

// Array 2015-10-11

// 不同类型的符号需要明白正确使用，如[ ]----- ( ) " " { }  < >

var shoppinglist = ["catfish", "water", "lemons"]

shoppinglist[1] = "botttle of water"

shoppinglist.count

shoppinglist.append("eggs")

shoppinglist += ["Milk"]

shoppinglist = shoppinglist + ["Bags"]

shoppinglist.insert("Bread", atIndex:4)

shoppinglist.appendContentsOf(["candy"])

shoppinglist.insertContentsOf(["butter"], at: 0)

//［“”］这个符号要写全的，不然就不会正确的

var fiblist = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

fiblist[4..<7]

//一定要注意新版本和旧版本的一些符号小差别

fiblist[0..<fiblist.endIndex]

//这个吧所有都显示好奇怪呢？？？

fiblist[0..<10]

Array(fiblist[0..<4])

var emptyArray1 = [String]()

var emptyArray2: [String] = []

var emptyArray3: [String] = [String]()

var emptyArray4 = Array<String>()// more wide and generical definition

//Dictionary can easily added???

var emptyDictionary = Dictionary<String, Float>()

//任何时候都要本能的记住这些编码的真正的意义和规律，不然就是编程的浪费，不同版本细微的差别要懂得自己纠错的！

// Control Flow

let MyArray = [1,1,2,3,5]
for value in MyArray {
    if value == 1{
        print("One")}
    else {
        print("Bigger than one")
    }
}

var dict = [
"name": "Steve Jobs",
"title": "CEO",
"Company": "Apple"
]

for (key, value) in dict {
    
    print("\(key): \(value)")
}

for i in -1..<2 {
    print(i)
}

for _ in 1..<3 {
}

// Functions --Call

func greet(Name: String, Day: String) -> String {
    
    return "Hello \(Name), today is \(Day)!"
}

greet("Jing Zhang", Day:"Sunday")


func getGasPrice() -> (Double, Double, Double)
{
    return (3.59, 3.69, 3.79)
}

getGasPrice()

func setup(numbers: Int...){
    
}
setup(5, 16, 38) // 省略号有时候就是重复的同类

func printWelcomemMessage() -> String {
    var y = "Hello,"
    func add(){
        y += "world"
    }
    add()
    return y
}
printWelcomemMessage()

// closures

// ->   arguments and return type
// in -----closure body and header

var Numbers = [1,2,3,4,5]
Numbers.map({
    (number:Int) -> Int in
    let result = 3 * number
    return result
})

Numbers = [1,2,6]
Numbers = Numbers.map({number in 3 * number})
print(Numbers)

Numbers = [2,5,4]
Numbers.map{ 3 * $0 }

//classes ---struct

class Shape {
    
    init(){
        
    }
    func getArea() -> Int {
        
        return 0;
    }
}


class Square: Shape {
    
    var sideLength: Int
    
    
    var perimeter : Int {
        get {
            return 4 * sideLength
        }
        set {
            sideLength = newValue / 4
        }
    }
    
    
    init(sideLength: Int) {
        
        self.sideLength = sideLength
        
        super.init()
        
        func shrink() {
            
            if sideLength > 0 {
                
                sideLength = sideLength - 1
            }
        }
        
       func getArea() -> Int {
            
            return sideLength * sideLength
        }
    
    }
    
    
var mySquare = Square(sideLength: 5)

print(mySquare.getArea())

mySquare.shrink()

print(mySquare.sideLength)

Square.self

//没有完全看懂，需要回顾一下的

    class StepCounter {
        
        var totalSteps: Int = 0 {
            
            willSet(newTotalSteps){
               
                print("About to set totalSteps to \(newTotalSteps)")
            }
            
            didSet {
                if totalSteps > oldValue {
                    print ("Add \(totalSteps - oldValue) steps")
                }
            }
        }
}

var stepCounters = StepCounter()

stepCounters.totalSteps = 100
    
stepCounters.totalSteps = 145

//不太清楚哪儿错了？？？？

    enum Suit {
        case Spades, Hearts, Diamonds, Clubs
        func getIcon() -> String {
            switch self {
            case .Spades: return "Fight"
            case .Hearts: return "Love"
            case .Diamonds: return "Engage"
            case .Clubs: return "Enjoy"
            }
        }
}

//不太清楚哪儿错了？？？？
    
// Protocol

    protocol SomeProtocol {
        
}

// Extensions

    extension Array {
        func first () -> Any? {
            return self[0]
        }
        func rest () -> Array {
            if self.count >= 1 {
                return Array(self[1..<self.endIndex])
            } else {
                return []
        }
        }
}

// Operatior Overloading

    infix func + (a: Int, b: Int) -> Int {
    
    return a - b
    
}
var x = 5 + 4


