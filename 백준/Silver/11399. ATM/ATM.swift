let n = Int(readLine()!)!
var numbers = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
var dp = Array(repeating: 0, count: n)

dp[0] = numbers[0]

for i in 1..<numbers.count {
    dp[i] = dp[i - 1] + numbers[i]
}

print(dp.reduce(0, +))