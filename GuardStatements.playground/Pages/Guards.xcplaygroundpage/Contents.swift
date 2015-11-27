//: ### Main Page
//: [Next](@next)

/*:

# Optionals and Dictionaries

*/


let numbers = ["one": 1, "two": 2]
let one = numbers["one"]
let two = numbers["four"]

//: using the ?? to optinal select a value
//if let validNumber = numbers["five"] ?? numbers["one"]
if let validNumber = numbers["five"]{
    print("Number has value: \(validNumber)")
} else {
    print("Number is nil")
}

func canUnwrap(potentialNumber: Int?) -> Bool {
    if let number = potentialNumber {
        print("Number has value: \(number)")
        return true
    } else  {
        return false
    }
}

canUnwrap(one)
canUnwrap(two)

//: above is if let below is the guard key word to unwrap

func guardedCanUnwrap(potentialNumber: Int?) -> Bool {
    guard let number = potentialNumber else {
        return false
    }
    print("Number has value: \(number)")
    return true
}

guardedCanUnwrap(one)
guardedCanUnwrap(two)

//: Enumerate Dictionaries

let numbers_2 = ["one": 1, "two": 2, "three": 3]
for numberKey in numbers_2.keys {
    print("The value of \(numbers_2[numberKey]!).")
}


//: below the value of number is a tuple (String, Int)
//: we can use the number.0 and number.1 to access the values
for number in numbers_2 {
    print("The value of \(number.0) is \(number.1).")
}

//: like above using named inputs and not tuple access
for (spelledOutNumber, numeral) in numbers_2 {
    print("The value of \(spelledOutNumber) is \(numeral)")
}


//: Sets
var odds = Set<Int>()
for i in 1.stride(through: 10, by: 2) {
    odds.insert(i)
}
odds.count
odds
odds.insert(7)
//odds.remove(7)
odds.contains(7)
odds.count
odds


//: Set from array
var primes: Set = [2,3,5,7]
//: Basic Set operations
let union = primes.union(odds)
let intersection = primes.intersect(odds)
let difference = odds.subtract(primes)
let symmetricDifference = odds.exclusiveOr(primes)

odds.intersectInPlace(primes)
odds.count
odds

intersection.isDisjointWith(union)
intersection.isStrictSubsetOf(union)
intersection.isStrictSubsetOf(union)

for prime in primes {
    print("\(prime)")
}


//: [Next](@next)



