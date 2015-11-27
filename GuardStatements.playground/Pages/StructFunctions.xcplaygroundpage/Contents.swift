//: [Previous](@previous)

struct Vertex {
    let x, y: Double
    
/*:
* Mutating version
*/
//    mutating func moveByX(deltaX: Double) {
//        x = x + deltaX
//    }

/*:
* non mutating version
*/
    func moveByX(deltaX: Double) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
}

/*
* instead of declaring and conforming to a protocol in the
* struct Vertex: CustomStringConvertiable the pattern below
*/

extension Vertex: CustomStringConvertible{
    var description: String {
        return "(\(x), \(y))"
    }
}

extension Vertex: Equatable{}

func ==(lhs: Vertex, rhs: Vertex) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}

var point = Vertex(x: 3.0, y: 4.0)
point.moveByX(5.0)
//: [Next](@next)
