import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

// 입력 배열
var arr = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)
for i in 1...n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 1...n {
        arr[i][j] = row[j-1]
    }
}

// prefix sum 배열
var prefix = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)

// 누적 합 계산
for i in 1...n {
    for j in 1...n {
        prefix[i][j] = prefix[i-1][j] + prefix[i][j-1] - prefix[i-1][j-1] + arr[i][j]
    }
}

// 쿼리 처리
var output = ""
for _ in 0..<m {
    let query = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = query[0], y1 = query[1], x2 = query[2], y2 = query[3]
    
    let sum = prefix[x2][y2] - prefix[x1-1][y2] - prefix[x2][y1-1] + prefix[x1-1][y1-1]
    output += "\(sum)\n"
}

print(output)
