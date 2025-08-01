import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

// 집합 S를 Set으로 저장
var stringSet = Set<String>()

for _ in 0..<n {
    let str = readLine()!
    stringSet.insert(str)
}

var count = 0
for _ in 0..<m {
    let query = readLine()!
    if stringSet.contains(query) {
        count += 1
    }
}

print(count)