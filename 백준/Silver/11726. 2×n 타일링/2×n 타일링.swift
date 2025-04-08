let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: n + 1)

func sol() -> Int {
    if n == 1 {
        return 1
    } else if n == 2 {
        return 2
    }
    
    dp[1] = 1
    dp[2] = 2
    
    
    for i in 3..<n + 1 {
        dp[i] = (dp[i - 2] + dp[i - 1]) % 10007
    }
    return dp[n]
    
}

print(sol())