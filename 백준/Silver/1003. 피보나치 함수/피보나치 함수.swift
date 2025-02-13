let N = Int(readLine()!)!
var dp = Array(repeating: (0,0), count: 41)

for _ in 0..<N {
    let input = Int(readLine()!)!
    print(solution(input).0, solution(input).1)
}




func solution(_ n: Int) -> (Int, Int) {
    
    dp[0] = (1, 0)
    dp[1] = (0, 1)
    
    for i in 2..<41 {
        dp[i] = ((dp[i - 1].0 + dp[i - 2].0), (dp[i - 1].1 + dp[i - 2].1))
    }
    return dp[n]
}