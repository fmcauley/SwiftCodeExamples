//: [Previous](@previous)


//: Adding an extion that mutates the Int stuct
// the danger in the method below is that the use is not aware that the data is be mutated
// when using the inout we are forced to use & on the invocation
extension Int{
    mutating func doubleInPlace(){
        self = self * 2
    }
}

var two = 2
two.doubleInPlace()
two

extension Int {
    func double() -> Int {
        return self * 2
    }
}

// the above does not have a side effect rather a new value (struct, class, enum etc.. is returned)

var two_again = 2

two_again.double()
two_again
two_again =  two_again.double()
two_again


//: [Next](@next)
