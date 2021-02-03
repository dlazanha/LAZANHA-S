/*:
## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
 */
// meta: litros de chopp vendidos (10 por dia)

var litersChoppSold:[Double] = [3, 7.5, 0, 0, 17.9, 12, 9, 4, 23.5, 16, 12, 4, 0, 1, 6, 6, 3, 4, 6, 10]
litersChoppSold.count
//:  - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
let badSold = 1.0
let goodSold = 5.0
let magnificSold = 9.9
let thisIsASold = 10.0
let noSold = 0.0



func ChoppSold (score: Double) -> String {
    if score > badSold {
        return ("procure melhorar suas vendas")
    } else if goodSold < 10 {
        return ("50%, continue assim")
    } else if magnificSold < 150 {
        return ("Quase lá meu guerreiro")
    } else if thisIsASold < 200 {
        return ("parábens, conseguimos")
    } else {
        return ("que coisa não ?")
    }
    }
    
//:  - callout(Exercise): Write a `for…in` loop that iterates over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
print("Você vendeu )
/*:
[Previous](@previous)  |  page 16 of 18  |  [Next: Exercise: Screening Messages](@next)
 */
