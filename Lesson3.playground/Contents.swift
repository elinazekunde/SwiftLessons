import UIKit

//MARK: Collections

//MARK: Arrays
let arrayOfStrings = ["avfd", "bfd", "cdf", "sd", "avfd"]

print(arrayOfStrings[3])

let arrayOfCharacters: [Character] = ["a", "b", "c", "s", "a"]

//declare an empty array
var arrayOfIntegers: [Int] = []
//var arrayOfIntegers = [Int]()

//add values to array
arrayOfIntegers = [1, 2, 3, 4, 5, 6]
print("1:", arrayOfIntegers)

arrayOfIntegers = [11, 22, 33, 44, 55, 66]
print("2:", arrayOfIntegers)

arrayOfIntegers += [0, 9]
print("3:", arrayOfIntegers)

arrayOfIntegers.append(48)
print("4:", arrayOfIntegers)

arrayOfIntegers.insert(23, at: 2)   //at specific index
print("5:", arrayOfIntegers)


type(of: arrayOfIntegers)

let someArrayOfInt = [97, 98]
var intArr = arrayOfIntegers + someArrayOfInt
print("intArr1:", intArr)

intArr[3] = 11
print("intArr2:", intArr)

print(intArr.isEmpty)

//intArr.removeAll()
intArr.remove(at: 3)
print("intArr3:", intArr)


//MARK: Sets
let setOfStrings: Set = ["a", "b", "c", "s", "a"]
print(setOfStrings) //does not allow duplicates

setOfStrings.contains("d")

var setOfCharacters: Set<Character> = []

setOfCharacters = ["d"]
setOfCharacters.insert("r")
print(setOfCharacters)

setOfCharacters = []
print(setOfCharacters)

type(of: setOfCharacters)

//MARK: Dictionaries
//declare a dictionary
var someStringDictionary = Dictionary<String, String>()
var moreStringDictionary = [String: Int]()
var stringDictionary: [String: String] = [:]

stringDictionary = ["name": "AM",
                    "age": "22",
                    "webLink": "1a.lv"]
print(stringDictionary)

stringDictionary["email"] = "a@a.com"
print(stringDictionary)

stringDictionary["email1"]
stringDictionary["name"] = "Elina"
print(stringDictionary)

stringDictionary.count
stringDictionary.updateValue("b@b.com", forKey: "email")
print(stringDictionary)

//delete values
stringDictionary.removeValue(forKey: "email")
print(stringDictionary)

stringDictionary["age"] = nil
print(stringDictionary)


//MARK: Loops
//MARK: For Loop
for i in 1...10 {
    print("\(i) * 10 = \(i * 10)")
}

for _ in 1...5 {
    print("Hello")
}

let apples = ["red apple", "red apple", "red apple", "green apple"]
type(of: apples)

var basket = 0

for apple in apples {
    if apple == "red apple" {
        basket += 1
    }
}
print("I have \(basket) red apples in my basket.")


let numberOfLegs = [
    "spider": 8,
    "dog"   : 4,
    "ant"   : 6
]
for (animalName, legsCount) in numberOfLegs {
    print("\(animalName) has \(legsCount) legs.")
}

let someText = "Swift"

for char in someText {
    print(char)
}

//MARK: While Loop
var count = 5

while count > 0 {
    print("Countdown: \(count)")
    count -= 1
}

var counter = 1
while true {
    print("Counter is now: \(counter)")
    counter += 1
    
    if counter == 20 {
        break
    }
}
