//: [Previous](@previous)
struct Vertex {
    let x, y: Double
    
    init(x: Double = 3.0, y: Double = 4.0){
        self.x = x
        self.y = y
    }
    
    init(bothXandY t: Double){
        self.init(x:t, y:t)
    }
}

let pointFiveFive = Vertex(bothXandY: 5)


let point = Vertex(x: 3.0, y: 4.0)

let pointSevenEight = Vertex(x: 7.0, y: 8.0)
let pointThreeFour = Vertex()

point.x
point.y
//: [Next](@next)
