import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    
    var tangerineCount:[Int : Int] = [:]
    var newK = k
    var answer = 0
    
    var count = 0

    for i in tangerine {
        if tangerineCount[i] == nil {
            tangerineCount[i] = 1
        } else {
            tangerineCount[i]! += 1
        }
    }

    for i in tangerineCount.sorted {$0.value > $1.value} {
        guard newK != 0 else {
            return answer
        }
        
        guard newK - i.value >= 0 else {
            answer += 1
            return answer
        }
        
        var key = 0

        if key != i.key {
            newK -= i.value
            key = i.key
            answer += 1
        }
    }
    return answer
}
