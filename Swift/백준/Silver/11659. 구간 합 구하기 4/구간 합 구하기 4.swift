let n = readLine()!.split(separator: " ").map {Int($0)!}
let numbers = readLine()!.split(separator: " ").map {Int($0)!}
let arr = (0..<n[1]).map{_ in readLine()!.split(separator: " ").map {Int($0)!}}
var dp:[Int] = Array(repeating: 0, count: n[0] + 1)

dp[0] = 0
dp[1] = numbers[0]

for i in 2..<n[0] + 1 {
    dp[i] = dp[i-1] + numbers[i - 1]
}

for i in 0..<n[1] {
    let end = dp[arr[i][1]]
    let start = dp[arr[i][0] - 1]
    print(end - start)
}