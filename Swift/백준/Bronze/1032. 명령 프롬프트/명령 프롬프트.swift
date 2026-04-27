import Foundation

let n = Int(readLine()!)!
var files: [Array<Character>] = []

for _ in 0..<n {
    files.append(Array(readLine()!))
}

var result = files[0]

for i in 0..<result.count {
    for j in 1..<n {
        if files[j][i] != result[i] {
            result[i] = "?"
            break
        }
    }
}

print(String(result))