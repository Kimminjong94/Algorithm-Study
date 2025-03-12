func solution(_ n:Int) -> Int64 {
    guard n != 1 else {return 1}
    guard n != 2 else {return 2}
    
    var dp = Array(repeating: 0, count: n)
    
    dp[0] = 1
    dp[1] = 2
    
    for i in 2..<n {
        dp[i] = (dp[i - 2] + dp[i - 1]) % 1234567
    }
    
    return Int64(dp[n - 1])
}