//MARK: - Lesson 1 - Variables and Constants

import UIKit

//MARK: String

var str = "Hello, playground"
let string = "string"
str = "playground😊"
print("xcode", str)

#warning("code is not working :(")

//MARK: String Interpolation
let swift = "Swift"
let year = 2014
print("Welcome to the \(swift) community. Together we are working to build a programming language to empower everyone to turn their ideas into apps on any platform. Announced in \(year), the Swift programming language has quickly become one of the fastest growing languages in history. Swift makes it easy to write software that is incredibly fast and safe by design. Our goals for Swift are ambitious: we want to make programming simple things easy, and difficult things possible.")

let aboutSwift = """
Announced in 2014, the Swift programming language has quickly become one of the fastest growing languages in history. Swift makes it easy to write software that is incredibly fast and safe by design. Our goals for Swift are ambitious: we want to make programming simple things easy, and difficult things possible.
"""
print(aboutSwift)

//MARK: Types of Data
let name: String = "Elina"
let age: Int = 22
let height: Double = 12.6
let weight: Float = 123.5
let student: Bool = true

//MARK: Tuples
let http404Error = (404, "Page Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode) and status message is \(statusMessage)")

//MARK: Casting
let castIntToDouble = Double(age) + height
print(castIntToDouble)

let castDoubleToInt = age + Int(weight)

let stringNumber = "10"

let castStringToInt = age + Int(stringNumber)!
print(castStringToInt)

//MARK: Operators
var a = 10
a = a + 1
a = a - 1
a = a * 2
a = a / 2

var b = 2
b *= 2

// Remainder
var r = 9 % 4

a == b
a != b
a >= b

//MARK: Comparison Operators
let word = "word1"
if word == "word" {
    print("Hello word")
} else {
    print("I'm sorry")
}

//MARK: Logic Operators
let updateMessage = "Can't update Xcode!"
let update = "Updated!"
let latestXcode = false
let latestMacVersion = true

if !latestXcode && latestMacVersion {
    print("we can continue developing apps")
} else {
    print("we need to update Xcode")
}

if latestXcode || latestMacVersion {
    print(updateMessage)
} else {
    print(update)
}
