//: [Previous](@previous)
/*:
# Option Set is not an Enum!!
* It allows us to make a choice between zero, one, or more options
* Enums have an init for example the rawValue: is an Enum init
*/

struct ColorsWeLove: OptionSetType {
    let rawValue: Int
    static let Red = ColorsWeLove(rawValue: 1)
    static let Green = ColorsWeLove(rawValue: 2)
    static let Blue = ColorsWeLove(rawValue: 4)
}

var noColors: ColorsWeLove = []
noColors.contains(.Red)

var twoColors: ColorsWeLove = [.Red, .Blue, ColorsWeLove(rawValue: 2)]
twoColors.contains(.Red)
twoColors.contains(.Green)

//: [Next](@next)
