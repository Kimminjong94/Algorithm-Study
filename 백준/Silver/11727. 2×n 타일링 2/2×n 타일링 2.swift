let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: n + 1)

func solution(_ n: Int) -> Int {
    
    if n < 2 {
        return 1
    }
    
    dp[1] = 1
    dp[2] = 3
    
    for i in 3..<n + 1 {
        dp[i] = (dp[i - 1] + 2*dp[i - 2] ) % 10007
    }

    return dp[n]
    
}

print(solution(n))