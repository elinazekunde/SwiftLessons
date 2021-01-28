import UIKit

//MARK: Function()
func addingTwoNumbers(){
    let a = 4
    let b = 5
    let c = a + b
    print("c:", c)
}
addingTwoNumbers()

func addingNumbers() -> Int {
    let a = 4
    let b = 15
    return a + b
}
addingNumbers()

func addingTwoNumbers(numberOne a: Int, numberTwo b: Int) -> Int {
    return a + b
}
addingTwoNumbers(numberOne: 2, numberTwo: 3)

func multiplyNums(numberOne: Int, numberTwo: Int) -> Int {
    return numberOne * numberTwo
}
multiplyNums(numberOne: 2, numberTwo: 5)

func multiplyNums(_ numOne: Int, _ numTwo: Int) -> Int {
    return numOne * numTwo
}
multiplyNums(5, 4)

func multiplyNums(_ numOne: Int, multiply numTwo: Int) -> Int {
    return numOne * numTwo
}
multiplyNums(2, multiply: 6)

func average(_ numbers: Double...) -> Double {
    var total = 0.0
    
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

average(4, 2, 6, 4, 8)


let someValue = 5
let arrayOfNumbers = [2,5,3,2,7]

func filterNumLessThanValue(value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    for number in numbers {
        if number < value {
            filteredNumbers.append(number)
        }
    }
    return filteredNumbers
}

filterNumLessThanValue(value: someValue, numbers: arrayOfNumbers)

func calculateDateValue(from day: Int, _ month: Int, _ year: Int) {
    let currentDate = Date()
    var dateComponents = DateComponents()
    dateComponents.day = day
    dateComponents.month = month
    dateComponents.year = year
    
    let userCalendar = Calendar.current
    
    if let calculateDate = userCalendar.date(from: dateComponents) {
        let dayPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDate).day!
        let monthPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDate).month!
        let yearPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDate).year!
        print("\(yearPassed) years or \(monthPassed) months, or \(dayPassed) days have passed since.")
    }
}

calculateDateValue(from: 19, 12, 1998)
