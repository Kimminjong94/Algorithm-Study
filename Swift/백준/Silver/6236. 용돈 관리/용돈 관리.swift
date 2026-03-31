import Foundation

let first = readLine()!.split(separator: " ").map { Int($0)! }
let N = first[0]
let M = first[1]

var costs: [Int] = []
for _ in 0..<N {
    costs.append(Int(readLine()!)!)
}

var left = costs.max()!
var right = costs.reduce(0, +)
var answer = right

func can(_ K: Int) -> Bool {
    var withdraw = 1
    var money = K
    
    for cost in costs {
        if money < cost {
            withdraw += 1
            money = K
        }
        money -= cost
    }
    
    return withdraw <= M
}

while left <= right {
    let mid = (left + right) / 2
    
    if can(mid) {
        answer = mid
        right = mid - 1
    } else {
        left = mid + 1
    }
}

print(answer)