let NK = readLine()!.split(separator: " ").map{Int($0)!}
let N = NK[0]
let K = NK[1]

var weightValue:[[Int]] = []
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    weightValue.append(input)
}

var dp = Array(repeating: 0, count: K + 1)

// 0-1 Knapsack DP
for wv in weightValue {
    let weight = wv[0]
    let value = wv[1]
    
    // 뒤에서부터 순회해야 중복 사용을 막음!
    for i in stride(from: K, through: weight, by: -1) {
        dp[i] = max(dp[i], dp[i - weight] + value)
    }
}

print(dp[K])