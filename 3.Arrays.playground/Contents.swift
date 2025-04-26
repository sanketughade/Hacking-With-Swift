import UIKit

var scores = Array<Int>()
scores.append(100)
scores.append(200)
scores.append(300)
print(scores[1])

var albums: [String] = []
albums.append("Zolkore")
albums.append("Folkore")
albums.append("Fearless")
albums.append("Red")

print(albums.count)

albums.remove(at: 1)
print(albums.count)

print(albums.sorted())
print(albums.reversed())
print(albums.contains("Red"))



