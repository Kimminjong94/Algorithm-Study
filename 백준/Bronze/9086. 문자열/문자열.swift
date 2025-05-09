import Foundation

let T = Int(readLine()!)!  // 테스트 케이스 개수 입력

for _ in 0..<T {
    let str = readLine()!  // 문자열 입력
    let firstChar = str.first!
    let lastChar = str.last!
    print("\(firstChar)\(lastChar)")
}