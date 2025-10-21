let NC = readLine()!.split(separator: " ").map { Int($0)! }
let N = NC[0]
let _ = NC[1]

let message = readLine()!.split(separator: " ").map { Int($0)! }
var firstIndex: [Int: Int] = [:]
var countDict: [Int: Int] = [:]

for (index, num) in message.enumerated() {
    if firstIndex[num] == nil {
        firstIndex[num] = index
    }
    countDict[num, default: 0] += 1
}

let sorted = message.sorted {
    let freqA = countDict[$0]!
    let freqB = countDict[$1]!
    
    if freqA == freqB {
        return firstIndex[$0]! < firstIndex[$1]!
    } else {
        return freqA > freqB
    }
}

print(sorted.map { String($0) }.joined(separator: " "))