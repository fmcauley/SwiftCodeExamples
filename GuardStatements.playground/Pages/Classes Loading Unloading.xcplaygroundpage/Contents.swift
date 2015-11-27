//: [Previous](@previous)
class ConferenceLocation {
    let city: String
    init(city: String = "Columbus") {
        self.city = city
        print("Creating Conference Location")
    }
}

//: * Lazy property is not created until it is called for
//: * Lazy property must be declared to be a var

class ConferenceAttendee {
    let name: String
    lazy var location = ConferenceLocation()
    init(name: String) {
        self.name = name
        print("Creating Conference Attendee")
    }
    
//: * deinit is used to release resuorces
//: * break database or network connection
//: * or clear a large cache
    
    deinit {
        // cleanup resources
    }
}

let frank = ConferenceAttendee(name: "Frank")




//: [Next](@next)
