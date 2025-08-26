import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m, k) = (input[0], input[1], input[2])

var board: [[Character]] = []
for _ in 0..<n {
    board.append(Array(readLine()!))
}

// mismatch 배열 (왼쪽 위가 W일 때, B일 때 각각)
var mismatchW = Array(repeating: Array(repeating: 0, count: m+1), count: n+1)
var mismatchB = Array(repeating: Array(repeating: 0, count: m+1), count: n+1)

// prefix sum 채우기
for i in 1...n {
    for j in 1...m {
        let expectedW: Character = ((i + j) % 2 == 0) ? "W" : "B" // 좌상단이 W일 때 기대값
        let expectedB: Character = ((i + j) % 2 == 0) ? "B" : "W" // 좌상단이 B일 때 기대값
        let actual = board[i-1][j-1]
        
        let addW = (actual == expectedW ? 0 : 1)
        let addB = (actual == expectedB ? 0 : 1)
        
        mismatchW[i][j] = mismatchW[i-1][j] + mismatchW[i][j-1] - mismatchW[i-1][j-1] + addW
        mismatchB[i][j] = mismatchB[i-1][j] + mismatchB[i][j-1] - mismatchB[i-1][j-1] + addB
    }
}

// K×K 영역 검사
var answer = Int.max

for i in k...n {
    for j in k...m {
        // (i-k+1, j-k+1) ~ (i, j) 까지 영역 합
        let sumW = mismatchW[i][j] - mismatchW[i-k][j] - mismatchW[i][j-k] + mismatchW[i-k][j-k]
        let sumB = mismatchB[i][j] - mismatchB[i-k][j] - mismatchB[i][j-k] + mismatchB[i-k][j-k]
        answer = min(answer, min(sumW, sumB))
    }
}

print(answer)