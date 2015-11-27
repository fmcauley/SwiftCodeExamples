//: [Previous](@previous)

enum PrimaryColor {
    case Red
    case Yellow
    case Blue
}

var color1 = PrimaryColor.Red
var color2 = color1

color1
color2

color1 = .Yellow
color2 = .Blue

color1 = .Blue
color2 == color1
//: [Next](@next)
