import Foundation


func solution(_ s: String) -> [Int] {
    // 1. 앞뒤 {{, }} 제거
    let trimmed = s.dropFirst(2).dropLast(2)
    
    // 2. 집합 단위로 분리
    let setsString = trimmed.components(separatedBy: "},{")
    
    // 3. 각 집합을 Int 배열로 변환
    var sets: [[Int]] = setsString.map { str in
        str.split(separator: ",").map { Int($0)! }
    }
    
    // 4. 길이 기준 정렬
    sets.sort { $0.count < $1.count }
    
    // 5. 순서대로 원소 추가
    var answer: [Int] = []
    for subset in sets {
        for num in subset {
            if !answer.contains(num) {
                answer.append(num)
                break
            }
        }
    }
    return answer
}
