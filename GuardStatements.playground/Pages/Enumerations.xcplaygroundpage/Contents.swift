//: [Previous](@previous)

/*:
# Enumerations
*/

import UIKit

/*:
* Enums can have raw values such as Int, Float, String etc...
* By default the rawValue is the string name but this can be set in the decleration and assgined inline
# Using String Raw values
*/

enum Color: String {
    case Red = "Maraschino"
    case Green
    case Blue = "Blueberry"
    
/*:
* enums have both state and behavior
*/
    
    func actualColor() -> UIColor {
        switch self {
        case .Red:
            return UIColor.redColor()
        case .Blue:
            return UIColor.blueColor()
        case .Green:
            return UIColor.greenColor()
        }
    }
    
/*:
* enums have computed properties
*/
    var actualColorProperty: UIColor {
        switch self {
        case .Red:
            return UIColor.redColor()
        case .Blue:
            return UIColor.blueColor()
        case .Green:
            return UIColor.greenColor()
        }
    }
/*:
* When to use a computed property vs function?
*/
    
    func colorSwatch(width width: Int, height: Int) -> UIView {
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        myView.backgroundColor = self.actualColorProperty
        return myView
    }

}

var crayon = Color.Green
crayon.actualColor()
crayon.colorSwatch(width: 200, height: 100)
crayon.rawValue


crayon = Color.Blue
crayon.actualColorProperty


let paintBrush: Color
paintBrush = .Blue
paintBrush.actualColor()
paintBrush.colorSwatch(width: 200, height: 100)


let randomColor = Color(rawValue: "Blueberry")
/*:
*Returning a value from a rawValue will be an optional type since there maynot a Color assocated with the string.
# Numeric Raw values
*/
randomColor?.colorSwatch(width: 200, height: 100)


enum ColorInt: Int{
    case Yellow = 1
    case Green
    case Blue = 4
    case Purple
    
    var hue: CGFloat {
        return CGFloat(rawValue) / 6
    }
    
    var actualColor: UIColor {
        return UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
    }
}

let crayonInt = ColorInt.Purple
crayonInt.actualColor


enum ColorFloat: CGFloat {
    case Yellow = 0.16667
    case Green  = 0.33333
    case Blue   = 0.66667
    case Purple = 0.83333
    
    var actualColor: UIColor {
        return UIColor(hue: rawValue, saturation: 1, brightness: 1, alpha: 1)
    }
}

let crayonFloat = ColorFloat.Blue
crayonFloat.actualColor

/*:
* Associated Values
*/

enum PrimaryColor: String {
    case Red
    case Yellow
    case Blue
    
    var actualColorProperty: UIColor {
        switch self {
        case .Red:
            return UIColor.redColor()
        case .Yellow:
            return UIColor.blueColor()
        case .Blue:
            return UIColor.greenColor()
        }
    }
    
    func colorSwatch(width width: Int, height: Int) -> UIView {
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        myView.backgroundColor = self.actualColorProperty
        return myView
    }
    
}
enum Desktop {
    case Black
    case White
    case Color(PrimaryColor)
    case Tiled(PrimaryColor, PrimaryColor, Int, Int)
}


let blackBackground = Desktop.Black
let whiteBackground = Desktop.White
let redBackground = Desktop.Color(PrimaryColor.Red)
let yellowBackground = Desktop.Color(.Yellow)

let backgrounds = [Desktop.Black, Desktop.Color(.Red),
                   Desktop.White, Desktop.Color(.Blue)]

for background in backgrounds {
    switch background {
    case .Color(let primaryColor):
        print("This background color is \(primaryColor.rawValue)).")
        primaryColor.colorSwatch(width: 200, height: 100)
    default:
        print("This background has no color.")
    }
}

for backgroundIf in backgrounds {
    if case .Color(let primaryColor) = backgroundIf where primaryColor == .Red{
        print("This background is Red.")
    } else {
        print("This background is not Red.")
    }
}

for case .Color(let primaryColor) in backgrounds where primaryColor != .Red {
    print("This background is \(primaryColor.rawValue). It isn't .Red")
}

let tiledBackground = Desktop.Tiled(.Red, .Blue, 5, 7)

switch tiledBackground {
case let .Tiled(firstColor, secondColor, numberOfRows, numberOfColumns):
    print("The background is tiled using colors\(firstColor.rawValue)  with \(secondColor.rawValue) rows  \(numberOfRows) and \(numberOfColumns) columns")
default:
    print("The background is not tiled")
}

//: [Next](@next)
