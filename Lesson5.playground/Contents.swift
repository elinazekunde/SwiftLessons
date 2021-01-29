import UIKit
//MARK: OOP
let postTitle = "OOP"
let postText = "Something"
let postAuthor = "me"

let postTitle2 = "OOP 2"
let postText2 = "Something else"
let postAuthor2 = postAuthor

class Post {
    var title = ""
    var text = ""
    var author = ""
}

let firstPost = Post()

firstPost.title = "This is my first post"
firstPost.text = "sdfgh"
firstPost.author = "Elina"

let secondPost = Post()

secondPost.title = "This is my second post"
secondPost.text = "werghtgfd"
secondPost.author

print("Author \(firstPost.author) has published new post \(firstPost.title) with content: \(firstPost.text).")
print("Author \(secondPost.author) has published new post \(secondPost.title) with content: \(secondPost.text).")

class Comment {
    var title = ""
    var text = ""
    var numberOfLikes = 20
    
    func addLikes() {
        numberOfLikes += 1
    }
}

let firstComment = Comment()
firstComment.title = "oop"
firstComment.text = "asdff"
firstComment.addLikes()
firstComment.addLikes()
firstComment.addLikes()

let secondComment = firstComment
secondComment.title = "aww"

print("The number of likes for \(firstComment.title) is \(firstComment.numberOfLikes).")
print("The number of likes for \(secondComment.title) is \(secondComment.numberOfLikes).")

//MARK: Initialization
class Human {
    var name: String
    var age: Int
    
    //init() {}
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let person = Human(name: "Elina", age: 22)

//let player = Human()
//person.age = 33

class Player {
    var team = "NY"
    var number: Int? = 10
    var tattoo = true
    
    func description() -> String {
        if number != nil {
            return "Hello, I'm playing in \(team) team and my number is \(String(describing: number))."
        } else {
            return "Hello, I'm playing in \(team) team."
        }
    }
}

let playerOne = Player()
playerOne.team = "LA"
playerOne.description()

let playerTwo = Player()
playerTwo.team = "Toronto"
playerTwo.description()

var array = [Player]()

array.append(playerOne)
array.append(playerTwo)

//MARK: Inheritance
class Parent {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func walk() {
        print("I can walk.")
    }
    
    func eat() {
        print("I can eat.")
    }
    
    func sleep() {
        print("I can sleep.")
    }
}

let dad = Parent(name: "Sam", age: 34)
dad.name
dad.sleep()

class Child: Parent {
    func educating() {
        if age >= 3 && age <= 6 {
            print("kindergarden age")
        } else if age < 3 {
            print("too early for pre-school education")
        } else {
            print("too late for pre-school education")
        }
    }
}

let littleBoy = Child(name: "Tom", age: 2)
littleBoy.educating()
littleBoy.age

class SchoolChild: Child {
    var student = false
}

let schoolchild = SchoolChild(name: "Mike", age: 6)
schoolchild.student = true

//MARK: Polymorphism
class Figure {
    func draw() {}
}

class Circle: Figure {
    override func draw() {
        print("Draw Circle.")
    }
}

class Rectangle: Figure {
    override func draw() {
        print("Draw Rectangle.")
    }
}

class Triangle: Figure {
    override func draw() {
        print("Draw Triangle.")
    }
}

let triangle = Triangle()
triangle.draw()

let rectangle = Rectangle()

func drawFigure(_ figure: Figure) {
    figure.draw()
}

drawFigure(triangle)
drawFigure(rectangle)
