let T = Int(readLine()!)!

for _ in 0..<T {
    let n = Int(readLine()!)!
    let top = readLine()!.split(separator: " ").map { Int($0)! }
    let bottom = readLine()!.split(separator: " ").map { Int($0)! }

    if n == 1 {
        print(max(top[0], bottom[0]))
        continue
    }

    var dp = Array(repeating: Array(repeating: 0, count: n), count: 2)

    dp[0][0] = top[0]
    dp[1][0] = bottom[0]

    dp[0][1] = top[1] + dp[1][0]
    dp[1][1] = bottom[1] + dp[0][0]

    if n >= 3 {
        for i in 2..<n {
            dp[0][i] = max(dp[1][i-1], dp[0][i-2], dp[1][i-2]) + top[i]
            dp[1][i] = max(dp[0][i-1], dp[0][i-2], dp[1][i-2]) + bottom[i]
        }
    }

    print(max(dp[0][n-1], dp[1][n-1]))
}