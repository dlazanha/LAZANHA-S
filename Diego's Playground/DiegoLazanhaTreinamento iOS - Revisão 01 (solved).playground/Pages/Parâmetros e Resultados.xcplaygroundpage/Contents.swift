/*:
## Parâmetros e Resultados
 
 Vimos que as funções, mesmo as mais simples, organizam e reutilizam código de programação, diminuindo as repetições e redundâncias.
 
 As funções com parâmetros e resultados são ainda mais poderosas, tornano o código menos específico e mais flexível.

 */
//:  - callout(Exercício): O código a seguir procura validar o login de um usuário no sistema. Porém da forma que foi escrito é necessário repetir uma série de linhas para testar cada cenário diferente. O seu papel será simplificar o código, evitando as redundâncias da versão atual.

let generalPassword = "123ICantChange"
let generalUser = "User123"

var userTyped = ""
var passwordTyped = ""

// Função para simplificar a verificação do login
func login(id: String, password: String) {
    if (id == generalUser && password == generalPassword) {
        print("Olá, \(userTyped)! A empresa lhe dá as boas vindas!")
    } else {
        print("Houve um problema no seu login. Verifique os dados digitados, por favor.")
    }
}

// Cenário 1 - Usuário acerta ID e SENHA
userTyped = "User123"
passwordTyped = "123ICantChange"
login(id: userTyped, password: passwordTyped)

// Cenário 2 - Usuário acerta ID mas erra a SENHA
userTyped = "User123"
passwordTyped = "123CantChange"
login(id: userTyped, password: passwordTyped)

// Cenário 3 - Usuário erra ID mas acerta a SENHA
userTyped = "User123@"
passwordTyped = "123ICantChange"
login(id: userTyped, password: passwordTyped)

// Cenário 4 - Usuário erra ID e SENHA
userTyped = "User123@"
passwordTyped = "123CantChange"
login(id: userTyped, password: passwordTyped)

/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/Functions.html)


[Anterior](@previous)  |  página 7 of 7
 */

