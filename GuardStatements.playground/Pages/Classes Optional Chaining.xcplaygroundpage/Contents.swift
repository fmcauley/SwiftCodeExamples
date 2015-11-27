//: [Previous](@previous)

//: # Optional Chaining

class StreetInformation {
    let streetNumberAndName: String?
    
    init(steetNumberAndName: String? = nil) {
        self.streetNumberAndName = steetNumberAndName
    }
}

class Address {
    let streetInformation: StreetInformation?
    let city: String
    let state: String
    
    init(city: String, state: String, streetInformation: StreetInformation? = nil) {
        self.city = city
        self.state = state
        self.streetInformation = streetInformation
    }
}

class ConferenceAttendee {
    let name: String
    let address: Address?
    init(name: String, address: Address? = nil) {
        self.name = name
        self.address = address
    }
}

let frank = ConferenceAttendee(name: "Frank")
let rosalyn = ConferenceAttendee(name: "Roz", address: Address(city: "Gahanna", state: "OH",streetInformation: StreetInformation(steetNumberAndName: "6225 Brooksong Circle")))

//: * Pyramid of doom
typealias StreetNumberAndName = String
func pyramidOfDoom(attendee: ConferenceAttendee) -> StreetNumberAndName {
    if let validAddress = attendee.address {
        if let validStreetInformation = validAddress.streetInformation {
            if let validStreetNumberAndName = validStreetInformation.streetNumberAndName {
                return validStreetNumberAndName
            }
        }
    }
    return "No Street number and name available"
}

pyramidOfDoom(frank)
pyramidOfDoom(rosalyn)

//: * Flattend Pyramid
func flattenedPyramid(attendee: ConferenceAttendee) -> StreetNumberAndName {
    if let validAddress = attendee.address,
        validStreetInformation = validAddress.streetInformation,
        validStreetNumberAndName = validStreetInformation.streetNumberAndName {
            return validStreetNumberAndName
    }
    return "No Street number and name available"
}

flattenedPyramid(frank)
flattenedPyramid(rosalyn)

//: * The Guard Version
func guardVersion(attendee: ConferenceAttendee) -> StreetNumberAndName {
    guard let validAddress = attendee.address,
        validStreetInformation = validAddress.streetInformation,
        validStreetNumberAndName = validStreetInformation.streetNumberAndName
        else {
            return "No street number and name available"
    }
    return validStreetNumberAndName
}

guardVersion(frank)
guardVersion(rosalyn)


//: * optional chaining
let info = frank.address?.streetInformation?.streetNumberAndName
let moreInfo = rosalyn.address?.streetInformation?.streetNumberAndName



//: * optional chanining with nil coalescing operator
func optionalChainingVersion(attendee: ConferenceAttendee) -> StreetNumberAndName {
    return attendee.address?.streetInformation?.streetNumberAndName
        ?? "No street number and name available"
}

optionalChainingVersion(frank)
optionalChainingVersion(rosalyn)


//: [Next](@next)
