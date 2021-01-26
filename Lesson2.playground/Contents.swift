import UIKit

//MARK: if, else condition statements
var myNumber = 10

if myNumber > 4 {
    print("The condition is true")
}

if myNumber < 4 && myNumber < 0 {
    print("The first condition is true")
} else if myNumber < 8 {
    print("The second condition is true")
} else {
    print("Nothing is true")
}

var a = 1
var b = 1

if a < 4 && b < 4 {
    print("The first condition is true")
} else if a == 10 {
    print("The second condition is true")
} else {
    print("Nothing is true")
}

//MARK: switch case conditional statements
let letter = "C"

switch letter {
case "a", "A":
    print("Our letter is: A")
case "b", "B":
    print("Our letter is: B")
case "c", "C":
    print("Our letter is: C")
default:
    print("no idea")
}

let planetCount = 2
var countExpression = "some message"

switch planetCount {
case 0:
    countExpression = "none"
case 1:
    countExpression = "one"
case 2...4:
    countExpression = "a few"
case 5...11:
    countExpression = "several"
case 12...99:
    countExpression = "dozens of"
default:
    countExpression = "????"
}

print("There are \(countExpression) known planets.")


let color = "red"
let number = 3

switch color {
case "red" where number == 3:
    print("You have a red color")
case "green" where number == 1:
    print("You have a green color")
default:
    break
}

//MARK: Optionals
var someString = ""
var anotherString: String

var stringNumber = "123"
var convertToInt = Int(stringNumber)

print(convertToInt)

if convertToInt == nil {
    print("convertToInt does not contain a value")
} else {
    print("conertToInt:", convertToInt)
}

let optionalString: String? = "100"

if let string = optionalString, let myInt = Int(string) {
    print("Int: \(myInt)")
}
