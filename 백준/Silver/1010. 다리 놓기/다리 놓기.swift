var dp = Array(repeating: Array(repeating: 0, count: 30), count: 30)



for i in 1..<30 {
    for j in 0...i {
        if j == 0 || j == i {
            dp[i][j] = 1
            continue
        }
        
        dp[i][j] = dp[i-1][j-1] + dp[i-1][j]
    }
}

if let T = Int(readLine()!) {
    for _ in 0..<T {
        if let input = readLine() {
            let values = input.split(separator: " ").map { Int($0)! }
            let N = values[0]
            let M = values[1]
            //            print(N, M)
            print(dp[M][N])
        }
    }
}