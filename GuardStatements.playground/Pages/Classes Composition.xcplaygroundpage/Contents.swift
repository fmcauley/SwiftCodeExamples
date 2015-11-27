//: [Previous](@previous)


//: ### An Example of creating a hierarchy using protocols and structs

//: * Struct's will automatically synthesize an init method

struct ConferenceAttendee {
    let name: String
}
 1
struct TutorialAttendee {
    let attendee: ConferenceAttendee
    let tutorial: String
    var name: String {
        return attendee.name
    }
}

protocol Namable: CustomStringConvertible {
    func nameBadge() -> String
}


//: * by implementing the description var of the CustomStringConvertible protocol we will the formatted output when the object is out putted to the screen

extension Namable {
    var description: String {
        return nameBadge()
    }
}

extension ConferenceAttendee :Namable {
    func nameBadge() -> String {
        return "Hi, I'm \(name)."
    }
}

extension TutorialAttendee : Namable {
    func nameBadge() -> String {
        return attendee.nameBadge() + " I'm taking \(tutorial)."
    }
}

let frank = ConferenceAttendee(name: "Frank")
let roz = TutorialAttendee(attendee: ConferenceAttendee(name: "Rosalyn"), tutorial: "Swift")


//: [Next](@next)
