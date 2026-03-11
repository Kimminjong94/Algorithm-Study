import Foundation

let N = Int(readLine()!)!

var arr = [(Int, Int)]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append((input[0], input[1]))
}

var answer = Int.max

for mask in 1..<(1 << N) {
    
    var s = 1
    var b = 0
    
    for i in 0..<N {
        if mask & (1 << i) != 0 {
            s *= arr[i].0
            b += arr[i].1
        }
    }
    
    answer = min(answer, abs(s - b))
}

print(answer)