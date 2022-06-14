import Foundation

let count = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map({Int(String($0))!})
let B = readLine()!.split(separator: " ").map({Int(String($0))!})

var A_sort = A.sorted(by: >)
var B_sort = B.sorted(by: <)

var sum = 0

for _ in 0..<count {
    sum += A_sort.removeLast() * B_sort.removeLast()
}

print(sum)