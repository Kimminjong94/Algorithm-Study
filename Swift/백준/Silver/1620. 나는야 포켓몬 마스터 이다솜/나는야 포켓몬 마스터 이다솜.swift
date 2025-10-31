import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

var numToName = [String]()
var nameToNum = [String: Int]()

for i in 1...n {
    let name = readLine()!
    numToName.append(name)
    nameToNum[name] = i
}

for _ in 0..<m {
    let query = readLine()!
    if let num = Int(query) {
        // 숫자 → 이름
        print(numToName[num - 1])
    } else {
        // 이름 → 번호
        print(nameToNum[query]!)
    }
}