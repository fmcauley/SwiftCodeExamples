//: [Previous](@previous)
 
//: ## Optional Property Values

class ConferenceAttendee {
    let name: String
    let hometown: String?
    
    init(name: String, hometown: String? = nil) {
        self.name = name
        self.hometown = hometown
        
    }
    
    convenience init(name: String) {
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

//: * make sure all local variables are set before call super init
 
class TutorialAttendee: ConferenceAttendee {
    let tutorial: String
    
    init(name: String, tutorial: String, hometown: String? = nil) {
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)
    }
    
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial)."
    }
}

let frank = ConferenceAttendee(name: "Frank", hometown: nil )
 
let rosalyn = TutorialAttendee(name: "Roz", tutorial: "Advanced Swift")
 
//: [Next](@next)
