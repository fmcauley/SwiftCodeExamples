public protocol Movable {
    var location: Vertex {get}
    // Self stands for whatever type is currently conforming to Movable
    // protocols can have properties
    func moveByX(deltaX: Double) ->
    Self
    // you want to declare the method so that it's part of the movable contract
    // Also note since we have implemented the method below the structs/classes that
    // conform to Movable do not need to implement shiftRight()
    func shiftRight() -> Self
    // You can give Protocol extentions a default implmentation and then allow
    /** the conforming class to override the default implemntation*/
    func whereAmI() -> Vertex
}

// In swift 2.0 we can add extensions to protocols
extension Movable {
    public func shiftRight() -> Self {
        return moveByX(1)
    }
}

extension Movable {
    public func whereAmI() -> Vertex {
        return self.location
    }
}
