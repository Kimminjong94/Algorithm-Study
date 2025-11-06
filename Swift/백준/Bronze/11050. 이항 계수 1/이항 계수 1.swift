import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]

// 팩토리얼 함수 정의
func factorial(_ num: Int) -> Int {
    return num <= 1 ? 1 : num * factorial(num - 1)
}

// 이항계수 계산
let result = factorial(n) / (factorial(k) * factorial(n - k))
print(result)