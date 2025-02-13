let N = Int(readLine()!)!
var dp = Array(repeating: 0, count: 1001)

func solution(_ n: Int) -> Int {
    if n < 2 {
        return 1
    }
    
    if n < 3 {
        return 2
    }
    
    dp[1] = 1
    dp[2] = 2
    
    for i in 3...N {
        dp[i] = (dp[i - 1] + dp[i - 2]) % 10007
    }
    
    return dp[n]
   
}

print(solution(N))
