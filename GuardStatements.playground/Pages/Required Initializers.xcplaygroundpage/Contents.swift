//: [Previous](@previous)

//: # Required Initializers

//: * User the required keyword in front of an init() to indicate that the subclass must override it
class ConferenceAttendee {
    let name: String
    let hometown: String?
    
    required init?(name: String, hometown: String? = nil) {
        self.name = name
        self.hometown = hometown
            if hometown == nil {
                return nil
            }
        }
    
    convenience init?(name: String) {
        self.init(name: name, hometown: "Columbus")
    }
    
    func nameBadge() -> String {
        let greeting = "Hi I'm \(name)"
        guard let validHometown = hometown else {
            return greeting + "."
        }
        return greeting + " from \(validHometown)"
    }
        
}

extension ConferenceAttendee: CustomStringConvertible {
    var description: String {
        return nameBadge()
    }
}

class TutorialAttendee: ConferenceAttendee {
    let tutorial: String

    
    init?(name: String, tutorial: String, hometown: String? = nil) {
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)
    }

//: * We are not allowed to return nil from an init?() until we have set teh value of the properties
    
    /*
    required init?(name: String, hometown: String? = nil) {
        self.tutorial = "No tutorial set"
        super.init(name: name, hometown: hometown)
        return nil
    }*/
    
//: * We are allowed to override a failable initializer with a non-failable initializer
    
    required init(name: String, hometown: String? = nil) {
        self.tutorial = "no tutorial at all"
        super.init(name: name, hometown: "this hotel")!
    }
    
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial)."
    }
}

let frank = ConferenceAttendee(name: "Frank", hometown: nil )

let rosalyn = TutorialAttendee(name: "Roz", tutorial: "Advanced Swift")

let caroline = ConferenceAttendee(name: "Caroline", hometown: "Columbus")

//: [Next](@next)
