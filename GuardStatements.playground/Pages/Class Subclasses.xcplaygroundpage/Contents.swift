//: [Previous](@previous)

//: ## Subclass
//: * Can have at most one super class
//: * Can have any number of Protocols

class ConferenceAttendee {
    let name, hometown: String
    
    init(name: String, hometown: String) {
        self.name = name
        self.hometown = hometown
    }
    
    convenience init(name: String) {
        self.init(name: name, hometown: "Columbus")
    }
    
    func nameBadge() -> String {
        return "Hi, I'm \(name) from \(hometown)"
    }
}

extension ConferenceAttendee: CustomStringConvertible {
    var description: String {
        return nameBadge()
    }
}

//: * The rule is that is we introduce a new property in a subclass, that property must be initialized before we call upt tp the superclass' init() method
//: * Designated initializers must initalize all of the properties in its class
//: * The designated init can call other to accomplish the property initalization
//: * override is a safty feature to eleminate accdental method modification
//: * mark a method as final so that subclass can not override the method


class TutorialAttendee: ConferenceAttendee {
    let tutorial: String
    
    init(name: String, tutorial: String, hometown: String = "Marietta") {
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)
    }
    
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial)."
    }
}

let frank = ConferenceAttendee(name: "Frank", hometown: "Columbus")
let rosalyn = TutorialAttendee(name: "Roz", tutorial: "Functional Swift")
frank.nameBadge()
rosalyn.nameBadge()
//: [Next](@next)
