import Foundation

let n = Int(readLine()!)!
var numbers: [String] = []

for _ in 0..<n {
    let line = readLine()!
    var current = ""
    
    for ch in line {
        if ch.isNumber {
            current.append(ch)
        } else {
            if !current.isEmpty {
                numbers.append(trimZero(current))
                current = ""
            }
        }
    }
    
    if !current.isEmpty {
        numbers.append(trimZero(current))
    }
}

func trimZero(_ s: String) -> String {
    let trimmed = s.drop { $0 == "0" }
    return trimmed.isEmpty ? "0" : String(trimmed)
}

numbers.sort {
    if $0.count == $1.count {
        return $0 < $1
    }
    return $0.count < $1.count
}

numbers.forEach { print($0) }