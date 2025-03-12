import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {

    var tangerineCount:[Int:Int] = [:]
    var target = k
    var answer = 0
    
    for i in tangerine {
        tangerineCount[i, default: 0] += 1
    }
    
    for i in tangerineCount.sorted { $0.value > $1.value } {
        if target <= 0 {
            return answer
        }
        
        target -= i.value
        answer += 1
        
        
    }
   

    return answer
}