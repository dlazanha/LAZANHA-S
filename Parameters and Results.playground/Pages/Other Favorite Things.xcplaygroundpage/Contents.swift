/*:
## Other Favorite Things
 
 The favorite food function you created earlier is OK but perhaps a bit limited. What if you have a favorite animal or a favorite color?
 The following code is a more flexible version:

```
 let categoryOfThing = "food"
 let favorite = "cheese"
 print("My favorite \(categoryOfThing) is \(favorite)")
```

 - callout(Exercise): Put the print statement above inside a function that allows you to pass in one string for the category of thing, and another string for your favorite. When you call the function, it should look like this:\
 `printFavorite(categoryOfThing: "food", favorite: "cheese")`
 */

func predilect (categoria:"bebida", favorite:"cerveja"){
    print("Meu \(categoria) favorito é \(favorite)")
}
predilect(categoria: String, favorite: String)

//favorita = "cerveja"
// print("Minha Bebida Favorita\(categoria) é \(favorita)")
//
//categoria = "carro"
//favorita = "BMW"
// print("Meu carro favorito\(categoria) é \(favorita)")
//
////
//func categoria (bebida: String. favorita: String) {
//    print ("Minha\(bebida)favorita é "\(favorite))
//}
//
//
//
//categoryOfThing = "beer"
//favorite = "stela artois"
// print("My favorite \(categoryOfThing) is \(favorite)")

/*:
You’ve learned how to pass information in to a function. Now learn how to get information out.

[Previous](@previous)  |  page 5 of 18  |  [Next: Getting Values Back](@next)
 */
