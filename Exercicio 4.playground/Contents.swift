import UIKit

var str = "Hello, playground"
// media do aluno


let nota1 = 7.0
let nota2 = 5.0
let media = (nota1 + nota2) / 2
let faltas = 20
print("Situação do aluno:")
print("Média: ", media, " - Faltas: ", faltas)
if media >= 6.0 && faltas <= 25 {
    print("Aluno aprovado")
} else {
    print("Aluno reprovado")
}

// booleana
let aprovado = (media >= 6.0 && faltas <= 25)
if aprovado {
    print("Aluno aprovado")
} else {
    print("Aluno reprovado")
}
