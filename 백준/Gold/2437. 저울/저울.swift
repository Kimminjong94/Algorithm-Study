let n = Int(readLine()!)!
var weights = readLine()!.split(separator: " ").map { Int($0)!}

// 오름차순 정렬
weights.sort()

var totalSum = 0 // 누적합

for weight in weights {
    if weight > totalSum+1 {
    	// 추가 누적합 + 2 이상이라면 합을 더하지 말고 종료합니다.
        break
    }
    totalSum += weight
}

print(totalSum+1)