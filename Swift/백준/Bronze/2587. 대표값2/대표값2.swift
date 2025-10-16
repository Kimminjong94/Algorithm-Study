import Foundation

var numbers: [Int] = []

for _ in 0..<5 {
    if let input = readLine(), let num = Int(input) {
        numbers.append(num)
    }
}

// 평균 계산
let average = numbers.reduce(0, +) / numbers.count

// 중앙값 계산
let sortedNumbers = numbers.sorted()
let median = sortedNumbers[numbers.count / 2]

print(average)
print(median)