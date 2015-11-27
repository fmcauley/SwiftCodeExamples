//: [Previous](@previous)

var two = 2

//: The parameter below 'input' in 'let' constant
//: add keyword var to the function signature and it will be mutable
func double(var input: Int){
    input
    input = input * 2
}
double(two)
two

import UIKit

var textField = UITextField()
textField.text = "Hello"

//: the function makes an immutable copy of the refrence pointer
//: use var to make the ref mutable

func modifyField(var field: UITextField) {
    field = UITextField()
    field.text = "Goodbye"
    field.text
}

modifyField(textField)
textField.text


//: if we want to make changes to an immutable ref's contents we can do that
//: see the updated example
//: Value type vs the Refrence type

func changeContentsOfImmutableRef(field: UITextField) {
    field.text = "Frank_The_Tank"
    field.text
}

changeContentsOfImmutableRef(textField)
textField.text


//: inout parameters
var three = 3

func triple(inout input: Int) {
    input = input * 3
}

triple(&three)
triple(&three)
triple(&three)
triple(&three)
three


var four = 4

//: instead of changing the ref return a new value to update the type

func fourTimes(input: Int) -> Int {
    //: * is an infix operator that takes Int in either side and returns an Int
    return input * input
}

four
four = fourTimes(four)
four

three = fourTimes(three)

//: [Next](@next)
