let T = Int(readLine()!)!
var dp = Array(repeating: 0, count: 11)

dp[1] = 1
dp[2] = 2
dp[3] = 4

for i in 4..<dp.count {
    dp[i] = dp[i-1] + dp[i-2] + dp[i-3]
}

for _ in 0..<T {
    let N = Int(readLine()!)!
    print(dp[N])
}