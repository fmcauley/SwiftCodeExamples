//: [Previous](@previous)

//: # Classes

//: * example of a Swift base class, there is no super class

class ConferenceAttendee {
    var name = "Frank"
    var hometown = "Marietta"
}

var attendee = ConferenceAttendee()
attendee.name = "Frankie"
attendee.name
let anotherAttende = attendee
anotherAttende.name = "Jim"
attendee.name
attendee.hometown
//: [Next](@next)
