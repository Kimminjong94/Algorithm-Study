let n = Int(readLine()!)!

var dp = Array(repeating: 0, count: n + 1)

func solution() -> Int {
    guard n != 0 else { return 1 }
    guard n != 1 else { return 1 }
    
    dp[0] = 1
    dp[1] = 1

    for i in 2..<dp.count {
        dp[i] = dp[i - 2] + dp[i - 1]
        
    }

    return dp[n - 1]
}
print(solution())