//: [Previous](@previous)

//: # Protocols

let point = Vertex(x: 3.0, y: 4.0)
point.location
let movePoint = point.moveByX(7.0)
let rectangle = Rectangle(topLeftCorner: point, width: 200.0, height: 100.0)
rectangle.location
let movedRectangle = rectangle.moveByX(12.0)

//: ## Polymorphism
//: ### use Generics to keep our type information when working with protocols
func shiftLeft<T: Movable>(movable: T) -> T {
    return movable.moveByX(-1)
}

let pointTwo = Vertex(x: 3.0, y: 4.0)
let shiftedPointLeft = shiftLeft(pointTwo)
let shiftedLeftRectangle = shiftLeft(rectangle)

//: * both shiftedPointLeft is now movable and so is shiftedLeftRectable we lost our types

//: ## Protocol Extensions (see Movable.swift file in the source)
let shiftedRightPoint = point.shiftRight()
let shiftedRightRectangle = rectangle.shiftRight()

//: * Example of Overridden protocol extenstion the rectangle implementaion is overriden
point.whereAmI()
rectangle.whereAmI()

//: [Next](@next)
