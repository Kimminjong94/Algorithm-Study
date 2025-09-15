import Foundation

let N = Int(readLine()!)!
let levels = readLine()!.split(separator: " ").map { Int($0)! }
let Q = Int(readLine()!)!

// res[i] = levels[i] > levels[i+1] ? 1 : 0
var res = [Int](repeating: 0, count: N)
for i in 0..<(N-1) {
    if levels[i] > levels[i+1] {
        res[i] = 1
    }
}

// prefix sum
var prefixSum = [Int](repeating: 0, count: N+1)
for i in 1...N {
    prefixSum[i] = prefixSum[i-1] + res[i-1]
}

// 쿼리 처리
var output = ""
for _ in 0..<Q {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0]
    let y = input[1]
    output += "\(prefixSum[y-1] - prefixSum[x-1])\n"
}
print(output, terminator: "")