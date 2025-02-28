let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var left = 0
var right = N - 1
var bestPair = (arr[left], arr[right])
var minDiff = abs(arr[left] + arr[right])

while left < right {
    let sum = arr[left] + arr[right]
    
    if abs(sum) < minDiff {
        minDiff = abs(sum)
        bestPair = (arr[left], arr[right])
    }
    
    if sum < 0 {
        left += 1  // 합이 0보다 작으면 왼쪽 포인터를 오른쪽으로 이동
    } else {
        right -= 1 // 합이 0보다 크면 오른쪽 포인터를 왼쪽으로 이동
    }
}

print(bestPair.0, bestPair.1)