let T = Int(readLine()!)!

for _ in 0..<T {
    let input = Int(readLine()!)!
    print(getAnswer(input))
}

func getAnswer(_ input: Int) -> Int {
    guard input > 2 else {
        return 1
    }
    
    var dp = Array(repeating: 0, count: input + 1)
    dp[1] = 1
    dp[2] = 1
    
    for i in 3..<dp.count {
        dp[i] = dp[i - 2] + dp[i - 3]
    }
    
    return dp[input]
}