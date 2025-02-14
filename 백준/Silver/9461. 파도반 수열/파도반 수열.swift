var n = Int(readLine()!)!
var dp = Array(repeating: 0, count: 101)


for _ in 0..<n {
    let input = Int(readLine()!)!
    print(solution(input))
}


func solution(_ n: Int) -> Int {
     if n < 4 {
        return 1
    }
    dp[1] = 1
    dp[2] = 1
    dp[3] = 1
    
    for i in 4..<n + 1 {
        dp[i] = dp[i - 2] + dp[i - 3]
    }
    return dp[n]
}
