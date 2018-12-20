import UIKit

var str = "Hello, playground"
str = "Hello, swift"
let constStr = str
//constStr = "Hello, world"

// Standard Types
var nextYear: Int
var bodyTemp: Float
var hasPet: Bool

// Collection Typs
var arrayInt: Array<Int> //OR
var arrayIntSS: [Int]
var dictionaryOfCapitalsByCountry: Dictionary<String,String> //OR
var dictionaryOfCapitalsByCountrySS: [String:String]
var myset: Set<Int>

// Literals and Subscripting
let number = 42
let station = 92.1

let countingUp = [1, 2, 3]
let second = countingUp[1]

let nameSpace = ["Bob" : 2, "Tim" : 3]

// Initializers
let emptyString = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()

let defaultNumber = Int()
let defaultBool = Bool()
let meaningOfLife = String(number)
let availableRooms = Set([205, 411, 412])

// Properties
var countingUp1 = ["one", "two"]
let secondElement = countingUp[1]
countingUp1.count

let emptyString1 = String()
emptyString1.isEmpty

// Instance Methods
countingUp1.append("three")

// Optionals
var reading1: Float?
var reading2: Float?
var reading3: Float?

reading1 = 9.8
reading2 = 9.2
reading3 = 9.7
// let average = (reading1 + reading2 + reading3) / 3 -> THIS WILL FAIL (NEED TO UNWRAP)
if let r1 = reading1,
    let r2 = reading2,
    let r3 = reading3 {
    let avgReading = (r1 + r2 + r3) / 3
} else {
    let errorString = "Instrument reported a reading that was nil."
}

// Subscripting Dictionaries
if let space13Assignee = nameSpace["Bobby"] {
    print("Key 13 is assigned in the dictionary!")
}

// Loops and String Interpolation
let range = 0..<countingUp1.count
for i in range {
    let string = countingUp1[i]
    print(string)
}

for string in countingUp1 {
        // Use 'string'
    print(string)
}

for (i, string) in countingUp1.enumerated() {
    print(i, " ", string)
}

// Enums
enum PieType: Int {
    case apple = 1
    case cherry
    case pecan
}
let favoritePie = PieType.apple

let name: String
switch favoritePie {
case .apple:
    name = "Apple"
case .cherry:
    name = "Cherry"
case .pecan:
    name = "Pecan"
}

let pieRawValue = PieType.pecan.rawValue
// pieRawValue is an Int with a value of 2
if let pieType = PieType(rawValue: pieRawValue) {
    print(pieType)
}


