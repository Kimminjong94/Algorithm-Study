func solution() {
    let cnt = Int(readLine()!)!
    var dp = Array(repeating: 0, count: cnt+2)
    dp[0] = 1
    dp[1] = 1
    for i in 2..<cnt + 1 {
        dp[i] = (dp[i-1] + dp[i-2]) % 10007
    }
    print(dp[cnt])
}
solution()