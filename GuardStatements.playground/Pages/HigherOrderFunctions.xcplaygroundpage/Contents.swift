//: [Previous](@previous)

/*:

# Higher Order Functions

*/

let two = 2

func double(input: Int) -> Int {
    return input * 2
}

let four = double(two)

/*:

* below the func takes in an Int then takes a func that takes in an Int and returns an Int
*  Finally the outter func reutrns an Int that is calcualtes by inner call

*/

func modify(input: Int, byApplying f: (Int) -> Int) -> Int {
/*:
* some times is help for readablity to have a explaining variable
*/
   
    let result = f(input)
    return result
}

let eight = modify(four, byApplying: double)

func addSeven(input: Int) -> Int {
    return input + 7
}

let fifteen = modify(eight, byApplying: addSeven)

/*:
* below is an example of closuer that is acting in place
*/

let sixteen = modify(fifteen) { (x) -> Int in
    x + 1
}
//: [Next](@next)
