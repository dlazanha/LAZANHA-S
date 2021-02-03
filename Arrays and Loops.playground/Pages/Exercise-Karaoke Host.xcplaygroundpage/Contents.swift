/*:
## Exercise: Karaoke Host

 You have a friend who loves singing karaoke with a big group of people. The karaoke singers add songs they’d like to sing to a list and the karaoke host calls out the songs one by one. 
 
 Your friend and has asked you to write software to help manage the song list.

 - callout(Exercise): 
 Create an empty array to hold song titles as strings, and use the `append` method to add three or four songs one at a time.
 */
var songs = [String]()
songs.append("Run to the hills")
songs.append("Master of the Puppers")
songs.append("Paranoid")
songs.append("Star Way to Heaven")
songs.append("See All Good People")
songs.append("Learn To fly")


var singers = ["tia 1" , "tia 2" , "tia 3" , "tia 4" , "tia 5" , "tia 6"]
/*:
 - callout(Exercise): 
 One enthusiastic singer wants to add three songs at once. Create an array holding this one singer's song list and use the `+=` operator to append their whole list to the end of the group's song list.
 */
let songsOfBrasil = ["Brasília Amarela", "Gita", "Construção"]
songs += songsOfBrasil
print(songs)
/*:
 - callout(Exercise): 
 Write a `for…in` loop and, for every song title in the array, print an encouraging announcement to let the next singer know that it's their turn.
 */
print("músicas Disponíveis:")

// enunciado....apenas a relação de músicass
for music in songs {
    print(music)
}
/// avançada
for index in 0..<songs.count {
    print( "\(index + 1): \(songs[index])")
}

/// usando o shuffle e as pessoas....protótipo quase pronto
songs.shuffle()
singers.shuffle()
print("Você irá cantar: ")
for index in 0..<singers.count {
    print("\(index + 1) : \(songs[index]) - \(singers[index]) ")
}
/// foi add mais 3 músicas e foi mudado o for de songs para singers
/*:
 - callout(Exercise): 
 After the loop has called everyone up to sing, use the `removeAll` method on the song list to clear out all the past songs.
 */

/*:
[Previous](@previous)  |  page 14 of 18  |  [Next: Exercise: Counting Votes](@next)
 */
