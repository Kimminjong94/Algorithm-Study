import Foundation

let NC = readLine()!.split(separator: " ").map {Int($0)!}
let N = NC[0]
let C = NC[1]

let arr = readLine()!.split(separator: " ").map {Int($0)!}

var countDict: [Int: Int] = [:]
var orderDict: [Int: Int] = [:]

for (i, num) in arr.enumerated() {
    countDict[num, default: 0] += 1
    
    if orderDict[num] == nil {
        orderDict[num] = i
    }
}

let sorted = countDict.keys.sorted {
    if countDict[$0]! == countDict[$1]! {
        return orderDict[$0]! < orderDict[$1]!
    }
    return countDict[$0]! > countDict[$1]!
}

var result: [Int] = []

for num in sorted {
    result.append(contentsOf: Array(repeating: num, count: countDict[num]!))
}

print(result.map { String($0) }.joined(separator: " "))