let membrosDaBanda = 5
let pesoPorPessoa = 50
let numeroDeViagens = 2

let pesoDoEquipamento = 450

let capacidadeDeCarga = membrosDaBanda * pesoPorPessoa * numeroDeViagens

if pesoDoEquipamento < capacidadeDeCarga {
    "Rock on."
} else {
    "Everyone quits! Looks like you've got a solo show."




let chanceDeChuva = 0.5
let pesoDaGuitarra = 60

if pesoDoEquipamento < capacidadeDeCarga {
    if pesoDaGuitarra < 80 {
        "Rock on."
    } else if chanceDeChuva >= 0.1 {
        "Everyone quits! Looks like you've got a solo show."
    }
} else {
    "Everyone quits! Looks like you've got a solo show."
    
}
