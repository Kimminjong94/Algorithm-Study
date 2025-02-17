let n = Int(String(readLine()!))!
var arr:[[Int]] = Array(repeating: [], count: n)
var dp:[[Int]] = []

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    arr[i] = input
    dp.append(Array(repeating: 0, count: i + 1))

}



dp[0][0] = arr[0][0]


for i in 1..<n {
    for j in 0..<dp[i].count {
        
        if j == 0 {
            dp[i][j] = dp[i - 1][0] + arr[i][j]

        } else if j < arr[i].count - 1 {
            dp[i][j] = max(dp[i - 1][j] + arr[i][j], dp[i - 1][j - 1] + arr[i][j])

        } else if j == arr[i].count - 1 {
            dp[i][j] = dp[i - 1][j - 1] + arr[i][j]

        }
        
    }
}

print(dp[n - 1].max()!)
