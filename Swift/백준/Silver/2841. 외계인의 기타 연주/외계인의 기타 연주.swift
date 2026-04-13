import Foundation


let NP = readLine()!.split(separator: " ").map { Int($0)! }
let N = NP[0]
let P = NP[1]

var lines = Array(repeating: [Int](), count: 7)
var count = 0

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    let line = input[0]
    let fret = input[1]
    
    while let last = lines[line].last, last > fret {
        lines[line].removeLast()
        count += 1
    }
    
    if lines[line].last == fret {
        continue
    }
    
    lines[line].append(fret)
    count += 1
}

print(count)
