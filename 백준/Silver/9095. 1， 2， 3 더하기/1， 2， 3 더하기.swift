let N = Int(readLine()!)!
var dp = Array(repeating: 0, count: 13)

for _ in 0..<N {
    let input = Int(readLine()!)!
    print(solution(input))
    
}

func solution(_ n: Int) -> Int {
    
    dp[1] = 1
    dp[2] = 2
    dp[3] = 4
    
    for i in 4..<13 {
        dp[i] = dp[i-1] + dp[i-2] + dp[i-3]
    }
        
    return dp[n]
}