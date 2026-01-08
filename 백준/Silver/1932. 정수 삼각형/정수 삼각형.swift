import Foundation

let N = Int(readLine()!)!
var arr:[[Int]] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    arr.append(input)
}

var dp = arr

for i in 1..<N {
    for j in 0...i {
        if j == 0 {
            dp[i][j] += dp[i-1][j]
        } else if j == i {
            dp[i][j] += dp[i-1][j-1]
        } else {
            dp[i][j] += max(dp[i-1][j-1], dp[i-1][j])
        }
    }
}

print(dp[N-1].max()!)