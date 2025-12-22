import Foundation
func solution(_ elements: [Int]) -> Int {
    let n = elements.count
    let doubled = elements + elements
    var result = Set<Int>()
    
    // 부분 수열 길이 1 ~ n
    for length in 1...n {
        
        // 초기 윈도우 합
        var windowSum = doubled[0..<length].reduce(0, +)
        result.insert(windowSum)
        
        // 슬라이딩 윈도우
        for start in 1..<n {
            windowSum -= doubled[start - 1]
            windowSum += doubled[start + length - 1]
            
            result.insert(windowSum)
        }
    }
    
    return result.count
}