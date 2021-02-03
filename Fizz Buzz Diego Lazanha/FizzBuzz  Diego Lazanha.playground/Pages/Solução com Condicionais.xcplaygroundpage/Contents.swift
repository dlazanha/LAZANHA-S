/*:
## Solução do FizzBuzz com Condicionais
 
 A solução mais utilizada para o desafio é utilizando condicionais e, naturalmente, um loop:
 
 */
// Codifique aqui sua solução
let divisibleByThree = 3
let divisibleByFive = 5
let over = 0

for number in 1...100 {
    if number % divisibleByThree == over && number % divisibleByFive == over{
        print("\(number) FizzBuzz")
    } else if number % divisibleByThree == over {
    print("\(number) Fizz")
    } else if number % divisibleByFive == over {
        print("\(number) Buzz")
    }
}
/*:
[Anterior](@previous)  |  página 2 de 3  |  [Próximo: Solução com Switch](@next)
 */
