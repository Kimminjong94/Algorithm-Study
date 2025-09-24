import Foundation

var arr:[String:Int] = [:]
var totalTrees = 0

while let input = readLine(), !input.isEmpty {
    totalTrees += 1
    arr[input, default: 0] += 1
}

let sortedKeys = arr.keys.sorted()

for key in sortedKeys {
     let count = arr[key]!
    let percentage = Double(count) / Double(totalTrees) * 100
    // 소수점 4자리까지 출력
    print("\(key) \(String(format: "%.4f", percentage))")
}