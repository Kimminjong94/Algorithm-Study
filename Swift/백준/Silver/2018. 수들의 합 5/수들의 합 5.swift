import Foundation

let N = Int(readLine()!)!
let goal = Array(0...N + 1)

var left = 1
var right = 2
var tmpSum = goal[left] + goal[right]
var count = 1

while left < right {
    if tmpSum == N {
        count += 1
        right += 1
        tmpSum += goal[right]
        tmpSum -= goal[left]
        left += 1
    } else if tmpSum < N {
        right += 1
        tmpSum += goal[right]
    } else {
        tmpSum -= goal[left]
        left += 1
        
    }
}

print(count)