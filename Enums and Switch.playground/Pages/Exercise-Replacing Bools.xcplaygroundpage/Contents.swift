/*:
## Exercise: Replacing Bools
 
 The following struct describes a type of enemy in a game:
 */

//struct Enemy {
//    let strength: Int
//    let speed: Int
//    let weapon: Bool
//}
// resolução
enum Weapon {
    case axe, sword, spear, magic
}
struct Enemy {
    let strength: Int
    let speed: Int
    let weapon: Weapon
}
let theEnemy = Enemy(strength: 200, speed: 100, weapon: .spear)
/*:
 As your game has developed, you’ve decided that your enemies might have more than one type of weapon.

 - callout(Exercise): Define an enum to represent the weapons an enemy might have: `none`, `sword`, `rubberMallet` and so on. Change the struct definition to use your new enum instead of a `Bool`.

[Previous](@previous)  |  page 19 of 21  |  [Next: Exercise: Counting Votes](@next)
 */
