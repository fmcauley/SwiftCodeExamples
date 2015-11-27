//: [Previous](@previous)

/*:
# Generics
*/

func modify<T>(input: T, byApplying f: (T) ->T) ->T {
    return f(input)
}

let two = modify(1){input in input * 2}

let three = modify(1.5){input in input * 2.0}

let greeting = modify("Hello"){$0 + ", World!"}



func transform<T, U>(input: [T], byApplying f: (T) ->U) -> [U]{
    var transformedArray = [U]()
    for element in input {
        transformedArray.append(f(element))
    }
    return transformedArray
}

let numberOfCopies = [9, 12, 7, 15, 20]

/*:
* Return an array of Boolans
* Does Int implement the Comparable interface?
*/
let isBiggerThanTen = transform(numberOfCopies){$0 > 10}
isBiggerThanTen

let revenue = transform(numberOfCopies){Double($0) * 0.99 * 0.70}
revenue

// map is function that works like transform does on an array
let isBiggerThanTenMap = numberOfCopies.map{$0 > 10}
isBiggerThanTenMap
let revenueMap = numberOfCopies.map{Double($0) * 0.99 * 0.70}
revenueMap
let numberDoubleMap = numberOfCopies.map{$0 * 2}
numberDoubleMap

//: [Next](@next)
