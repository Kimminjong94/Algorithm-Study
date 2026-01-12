import Foundation

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let trees = readLine()!.split(separator: " ").map { Int($0)! }

let M = NM[1]

var left = 0
var right = trees.max()!
var answer = 0

while left <= right {
    let mid = (left + right) / 2
    
    let wood = trees.reduce(0) {
        $0 + max(0, $1 - mid)
    }
    
    if wood >= M {
        answer = mid
        left = mid + 1
    } else {
        right = mid - 1
    }
}
print(answer)
