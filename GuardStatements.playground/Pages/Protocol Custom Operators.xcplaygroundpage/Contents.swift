//: [Previous](@previous)

//: # Protocol Custom Operators
// Opt + \ == «
/* using the prefix operator because the thing it operates on*/

//: * First declare the operator
prefix operator « {}

//: * Next declare what it does
prefix func « <T: Movable>(movable: T) -> T {
    return movable.moveByX(-1)
}

let point = Vertex(x: 3.0, y: 4.0)
let shiftedLeftPoint = «point

//: * there is also a postfix operator
//: * Opt+Shift+\ == »
postfix operator » {}

postfix func »<T: Movable>(movable: T) -> T {
    return movable.moveByX(1)
}

let shiftedRightPoint = point»

//: * infix operator
//: * note: there is nothing between the {} if we need to that is where we would set the precedence
//: * level for an infix operator and where we would say whether it was left associative or right 
//: * associative
//: * the default precedence is 100 and default associativity is none

//: * Opt + j == ∆

infix operator ∆ {}

func ∆<T: Movable>(leftMovable: T, rightMovable: T) -> (shiftedLeft: T, shiftedRight: T) {
    return («leftMovable, rightMovable»)
}

let moveApartPoint = shiftedLeftPoint ∆ shiftedRightPoint

//: ### sum two Vertex
let sum = shiftedLeftPoint + shiftedRightPoint


//: [Next](@next)
