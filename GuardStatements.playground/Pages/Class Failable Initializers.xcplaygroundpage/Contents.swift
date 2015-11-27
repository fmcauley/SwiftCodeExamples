//: [Previous](@previous)

//: ## Failable Initializers

class ConferenceAttendee {
    let name: String
    let hometown: String?
    
    init?(name: String, hometown: String? = nil) {
        self.name = name
        self.hometown = hometown
        if hometown == nil {
            return nil
        }
        
    }
    
//: * a non failable initializers can not delegate to a failable initializer
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
    
//: * a non failable initizalizer cannot chain to failable initializer
    
    init?(name: String, tutorial: String, hometown: String? = nil) {
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)
    }
    
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial)."
    }
}

let frank = ConferenceAttendee(name: "Frank", hometown: nil )

let rosalyn = TutorialAttendee(name: "Roz", tutorial: "Advanced Swift")

let caroline = ConferenceAttendee(name: "Caroline", hometown: "Columbus")

//: [Next](@next)

