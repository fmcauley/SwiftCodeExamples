//: [Previous](@previous)

import Foundation

struct Vertex {
    private (set) var x: Double {
        willSet{
            print("The value of x is changing from \(self.x) to \(newValue)")
        }
        didSet {
            print("The value of x has changed from \(oldValue) to \(x)")
            if x == 8.0 {
                x = -8.0
            }
        }
    }
    private (set) var y: Double
    
    /*:
    * Computed property example
    */
    var magnitude: Double {
        get {
            return sqrt(x * x + y * y)
        }
        set {
            let multiplier = newValue / magnitude
            x *= multiplier
            y *= multiplier
        }
    }
    
    init(x:Double = 3.0, y: Double = 4.0) {
        self.x = x
        self.y = y
    }
}

var pointThreeFour = Vertex()
pointThreeFour.magnitude = 10.0
pointThreeFour

//: [Next](@next)
