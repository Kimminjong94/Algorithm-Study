let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: -9999, count: 100001)
dp[0] = arr[0]

for i in 1..<n {
    dp[i] = max(arr[i], arr[i] + dp[i - 1])
}

print(dp.max()!)