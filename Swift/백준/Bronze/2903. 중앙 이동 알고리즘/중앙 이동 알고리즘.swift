import Foundation

// 입력 받기
if let input = readLine(), let n = Int(input) {
    let size = Int(pow(2.0, Double(n))) + 1
    let totalPoints = size * size
    print(totalPoints)
}