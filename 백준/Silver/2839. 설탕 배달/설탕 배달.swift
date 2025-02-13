let n = Int(readLine()!)!
var dp = Array(repeating: 5001, count: 5001)

dp[3] = 1
dp[5] = 1

for i in 6...5000 {
    dp[i] = min(dp[i - 3], dp[i - 5]) + 1
}

print(dp[n] > 5000 ? -1 : dp[n])