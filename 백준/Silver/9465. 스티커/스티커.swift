let T = Int(readLine()!)!
var answer = [Int]()
for _ in 0..<T {
    let n = Int(readLine()!)!
    let firstLine = readLine()!.split(separator: " ").map{Int($0)!}
    let secondLine = readLine()!.split(separator: " ").map{Int($0)!}
    


    answer.append(solution(n, [firstLine, secondLine]))

}

for i in answer {
    print(i)
}


func solution(_ n: Int, _ score: [[Int]]) -> Int {
    
    if n == 1 {
        return max(score[0][0], score[1][0])
    }
    
    var dp = Array(repeating: [0, 0], count: n)
    

    dp[0][0] = score[0][0]
    dp[0][1] = score[1][0]
    
    
    if n > 1 {
        dp[1][0] = score[1][0] + score[0][1]
        dp[1][1] = score[0][0] + score[1][1]
    }
    
    for i in 2..<n {
        dp[i][0] = max(dp[i - 1][1], dp[i - 2][1]) + score[0][i]
        dp[i][1] = max(dp[i - 1][0], dp[i - 2][0]) + score[1][i]
    }
    
    
    return max(dp[n - 1][0], dp[n - 1][1])
}