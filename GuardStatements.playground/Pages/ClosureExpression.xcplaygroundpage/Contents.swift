//: [Previous](@previous)

/*:
# Closure Expressions
*/

/*:
* Closure expression 'in' separates the expression signature from the body
*/

func modify(input: Int, byApplying f:(Int) ->Int) -> Int {
    return f(input)
}

/*:
* Standard Closure sytentax
*/
let four = modify(2, byApplying: {(x: Int) -> Int in
    return x * 2
})

/*:
* Trailing Closure
*/
let eight = modify(four){(y: Int) -> Int in
    return y * 2
}

/*:
* Terse Closure
*/

let sixteen = modify(eight){ z in return z * 2 }
sixteen
/*:
* Next iteration
*/

let thirthtwo = modify(sixteen){input in input * 2}
thirthtwo

/*:
*Final iteration of Closure
*/
let sixtyfour = modify(thirthtwo){$0 * 2}
sixtyfour


//: [Next](@next)
