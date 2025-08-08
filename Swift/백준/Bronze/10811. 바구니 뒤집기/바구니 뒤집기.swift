import Foundation

// 입력 받기
let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

// 바구니 초기화 (1부터 N까지)
var baskets = Array(1...n)

// M번 역순 연산 수행
for _ in 0..<m {
    let range = readLine()!.split(separator: " ").map { Int($0)! }
    let i = range[0] - 1 // Swift 배열은 0부터 시작하므로 -1
    let j = range[1] - 1

    // i부터 j까지 부분을 뒤집기
    let reversedPart = baskets[i...j].reversed()
    baskets.replaceSubrange(i...j, with: reversedPart)
}

// 결과 출력
print(baskets.map { String($0) }.joined(separator: " "))