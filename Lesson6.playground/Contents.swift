import UIKit
//MARK: Enumeration
var someDay = "Monday"

func setUpAlarm() {
    if someDay == "Monday" {
        print("Get up at 8AM.")
    } else {
        print("No alarm.")
    }
}

setUpAlarm()

enum Weekday {
    case monday
    case tuesday
    case wednesday, thursday
}

//var weekday = Weekday.monday
var weekday: Weekday = .monday

func setUpBedTime() {
    if weekday == .monday || weekday == .tuesday {
        print("Get up at 8AM.")
    } else {
        print("No alarm.")
    }
}

setUpBedTime()

func setUpSleepAlarm() {
    switch weekday {
    case .monday:
        print("Get up at 8AM.")
    case .tuesday:
        print("Get up at 9AM.")
    case .wednesday:
        print("Get up at 10AM.")
    default:
        print("No alarm.")
    }
}

weekday = .thursday
setUpSleepAlarm()


enum calculationType: String {
    case addition = "+"
}

var calc = calculationType.addition
print(calc.rawValue)

enum Planet: Int {
    case mercury = 1, venus, earth, jupiter, mars, saturn
}

var somePlanet = Planet.earth
print("Earth is the \(somePlanet.rawValue) planet from the sun system.")

enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weekend.sunday("set up alarm for", 11, "PM")
print(wnd)

//MARK: Struct
struct ChessBoard {
    var player: String
    var x: Int
    var y: Int
    
    func getPositionOnBoard() {
        print("The position of \(player): X\(x), Y\(y).")
    }
}

var playerOne = ChessBoard(player: "Tom", x: 10, y: 8)
var playerTwo = ChessBoard(player: "Sam", x: 2, y: 6)

playerOne.getPositionOnBoard()
playerTwo.getPositionOnBoard()

class MacBook {
    var name: String
    var year: Int
    var color: String
    
    init(name: String, year: Int, color: String) {
        self.name = name
        self.year = year
        self.color = color
    }
    
    func getSpecs() {
        print("\(name), \(year), \(color)")
    }
}

let macBookPro = MacBook(name: "MacBook Pro", year: 2020, color: "grey")

macBookPro.getSpecs()

let macBookAir = macBookPro

macBookAir.name = "MacBook Air"

macBookAir.getSpecs()
macBookPro.getSpecs()

struct iPhone {
    var name: String
    var year: Int
    var color: String
    
    func getSpecs() {
        print("\(name), \(year), \(color)")
    }
}

let iPhoneXR = iPhone(name: "iPhoneXR", year: 2019, color: "black")

var iPhoneXS = iPhoneXR

iPhoneXS.name = "iPhoneXS"

iPhoneXS.getSpecs()
iPhoneXR.getSpecs()
