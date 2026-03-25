import Foundation

let N = Int(readLine()!)!
let fruits = readLine()!.split(separator: " ").map { Int($0)! }

var count = [Int: Int]()
var left = 0
var answer = 0

for right in 0..<N {
    count[fruits[right], default: 0] += 1
    
    // 종류가 2개 초과하면 left 이동
    while count.keys.count > 2 {
        let leftFruit = fruits[left]
        count[leftFruit]! -= 1
        if count[leftFruit]! == 0 {
            count.removeValue(forKey: leftFruit)
        }
        left += 1
    }
    
    answer = max(answer, right - left + 1)
}

print(answer)