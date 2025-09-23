import Foundation


func solution(_ topping: [Int]) -> Int {
    var answer = 0
    
    // 오른쪽에 있는 토핑 종류 카운트
    var rightCount: [Int: Int] = [:]
    for t in topping {
        rightCount[t, default: 0] += 1
    }
    
    // 왼쪽은 Set으로 관리
    var leftSet = Set<Int>()
    
    for i in 0..<topping.count - 1 {
        let t = topping[i]
        
        // 왼쪽에 추가
        leftSet.insert(t)
        
        // 오른쪽에서 빼기
        rightCount[t]! -= 1
        if rightCount[t]! == 0 {
            rightCount.removeValue(forKey: t)
        }
        
        // 서로 다른 원소 개수 비교
        if leftSet.count == rightCount.count {
            answer += 1
        }
    }
    
    return answer
}