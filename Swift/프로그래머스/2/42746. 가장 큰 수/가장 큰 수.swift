import Foundation

func solution(_ numbers: [Int]) -> String {
    // Int 배열을 문자열 배열로 변환
    let strings = numbers.map { String($0) }
    
    // 정렬: 두 문자열을 이어붙였을 때 더 큰 조합이 앞에 오게
    let sorted = strings.sorted {
        $0 + $1 > $1 + $0
    }
    
    // 0으로만 구성된 경우 예외 처리
    if sorted.first == "0" {
        return "0"
    }
    
    // 이어붙여 반환
    return sorted.joined()
}