import Foundation

let N = Int(readLine()!)!

if N % 2 == 1 {
    print(0)
    exit(0)
}

var dp = Array(repeating: 0, count: N + 1)

dp[0] = 1
dp[2] = 3

if N >= 4 {
    for i in stride(from: 4, through: N, by: 2) {
        dp[i] = dp[i-2] * 3
        
        var j = 4
        while j <= i {
            dp[i] += dp[i-j] * 2
            j += 2
        }
    }
}

print(dp[N])