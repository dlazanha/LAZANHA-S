/*:
## Solução do FizzBuzz com Switch Case
 
 Uma boa alternativa para solucionar o enigma é utilizando switch e, naturalmente, um loop também:
 
 */
// Codifique aqui sua solução

let divisibleByThree = 3
let divisibleByFive = 5
let over = 0

for number in 1...100 {
    switch (number % divisibleByThree == over, number % divisibleByFive == over) {
    
    case (true, true):
        print("\(number) FizzBuzz")
    
    case (true, false):
        print("\(number) Fizz")
    
    case (false, true):
        print("\(number) Buzz")
    

    }
}
/*:
[Anterior](@previous)  |  página 7 of 3
 */
