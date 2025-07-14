let NK = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NK[0]
let k = NK[1]
let temperature = readLine()!.split(separator: " ").map{ Int($0)! }

var currentSum = temperature[0..<k].reduce(0, +)
var maxSum = currentSum

for i in k..<n {
    currentSum = currentSum - temperature[i - k] + temperature[i]
    maxSum = max(currentSum, maxSum)
}
print(maxSum)