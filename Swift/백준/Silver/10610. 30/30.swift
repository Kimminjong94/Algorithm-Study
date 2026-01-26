
import Foundation

let input = readLine()!
var digits = input.map { Int(String($0))! }

// 1. 0이 하나라도 있는지
if !digits.contains(0) {
    print(-1)
    exit(0)
}

// 2. 모든 자리수 합이 3의 배수인지
let sum = digits.reduce(0, +)
if sum % 3 != 0 {
    print(-1)
    exit(0)
}

// 3. 가장 큰 수를 만들기 위해 내림차순 정렬
digits.sort(by: >)

// 4. 출력
let result = digits.map(String.init).joined()
print(result)