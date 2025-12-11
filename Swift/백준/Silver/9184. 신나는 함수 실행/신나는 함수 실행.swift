import Foundation

var dp = Array(repeating: Array(repeating: Array(repeating: 0, count: 21), count: 21), count: 21)

func w(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if a <= 0 || b <= 0 || c <= 0 {
        return 1
    }
    if a > 20 || b > 20 || c > 20 {
        return dp[20][20][20]
    }
    return dp[a][b][c]
}

// DP 테이블 미리 계산
for a in 0...20 {
    for b in 0...20 {
        for c in 0...20 {
            if a == 0 || b == 0 || c == 0 {
                dp[a][b][c] = 1
            } else if a < b && b < c {
                dp[a][b][c] = dp[a][b][c-1] + dp[a][b-1][c-1] - dp[a][b-1][c]
            } else {
                dp[a][b][c] = dp[a-1][b][c]
                              + dp[a-1][b-1][c]
                              + dp[a-1][b][c-1]
                              - dp[a-1][b-1][c-1]
            }
        }
    }
}

// 입력 처리
while let line = readLine() {
    let nums = line.split(separator: " ").map { Int($0)! }
    let a = nums[0], b = nums[1], c = nums[2]
    
    if a == -1 && b == -1 && c == -1 {
        break
    }
    
    print("w(\(a), \(b), \(c)) = \(w(a, b, c))")
}