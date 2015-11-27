//: [Previous](@previous)

//: # Initializers
//: * Structs give us a default initalizer for our properties
//: * Classes do not we need an Initializer
//: * Every class should have one designated initializer
//: * Additional initializers that ref an init are Convenience initializers
//: * a Designated initializer can't call another init() in the same class
//: * If class has a super class, a designated initializer must call a designated initializer in the super classs
//: * there can be non convenience init's in the class

//: ### class has ref symantics while structs have value symantics


class ConferenceAttendee {
    let name, hometown: String
    
    init(name: String, hometown: String) {
        self.name = name
        self.hometown = hometown
    }
    
    convenience init(name: String) {
        self.init(name: name, hometown: "Columbus")
    }
}

extension ConferenceAttendee: CustomStringConvertible {
    var description: String {
        return "\(self.name) from \(self.hometown)"
    }
}

let frank = ConferenceAttendee(name: "Frank", hometown: "Marietta")
let rosalyn = ConferenceAttendee(name: "Roz")





//: [Next](@next)
