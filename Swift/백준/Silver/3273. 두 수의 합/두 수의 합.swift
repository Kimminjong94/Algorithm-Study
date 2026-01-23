import Foundation

let N = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map {Int($0)!}.sorted()
let X = Int(readLine()!)!

var left = 0
var right = N - 1
var count = 0

while left < right {
    let sum = arr[left] + arr[right]
    if sum == X {
        count += 1
        left += 1
        right -= 1
    } else if sum > X {
        right -= 1
    } else if sum < X {
        left += 1
    }
    
}
print(count)