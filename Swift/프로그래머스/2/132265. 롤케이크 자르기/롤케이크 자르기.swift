import Foundation

func solution(_ topping: [Int]) -> Int {
    var rightCount: [Int: Int] = [:]
    
    for t in topping {
        rightCount[t, default: 0] += 1
    }
    
    var leftSet = Set<Int>()
    var answer = 0
    
    for t in topping {
        rightCount[t]! -= 1
        if rightCount[t]! == 0 {
            rightCount.removeValue(forKey: t)
        }
        
        leftSet.insert(t)
        
        if leftSet.count == rightCount.count {
            answer += 1
        }
    }
    
    return answer
}