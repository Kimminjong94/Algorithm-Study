import Foundation

let N = Int(readLine()!)!
var enter: [String] = []
var exit: [String] = []

for _ in 0..<N {
    enter.append(readLine()!)
}

for _ in 0..<N {
    exit.append(readLine()!)
}

var indexMap: [String: Int] = [:]
for i in 0..<N {
    indexMap[enter[i]] = i
}

var count = 0

for i in 0..<N {
    for j in i+1..<N {
        if indexMap[exit[i]]! > indexMap[exit[j]]! {
            count += 1
            break
        }
    }
}

print(count)
