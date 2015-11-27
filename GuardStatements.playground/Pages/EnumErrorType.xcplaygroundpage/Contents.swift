//: [Previous](@previous)

enum InputSizeError : ErrorType {
    case NegativeNumberError
    case NumberIsTooLargeError(anountOver:Int)
}

func double(input: Int) throws -> Int {
    if input < 0 {
        throw InputSizeError.NegativeNumberError
    } else if input > 49 {
        throw InputSizeError.NumberIsTooLargeError(anountOver: input - 49)
    } else {
        return input * 2
    }
}

/*:
* so how does the argument assignment let work? the catch is able to capture the input
* from the throw and assign that to a variable...
*/

func cautiousDouble(input: Int){
    do {
        print("double", input, "=", try double(input))
    }
    catch InputSizeError.NumberIsTooLargeError(let excess) {
        print("Sorry, input is too big by", excess)
    }
    catch {
        print("Error:", error)
    }
}



cautiousDouble(50)
cautiousDouble(-8)


/*:
*this is bad use the ?
*/
let ten = try! double(5)

/*:
* using the try? will return a nil
* when an error is thrown else an optional is returned
*/

let six = try? double(3)
let negativeTwo = try? double(-1)
let twoHundred = try? double(100)

/*:
* flat map
*/
let ints = [6, -1, 12, 100, 20]
let doubleInts = ints.flatMap{try? double($0)}
doubleInts
//: [Next](@next)
