import Foundation
func solution(_ clothes: [[String]]) -> Int {
    
    var dic:[String:Int] = [:]
    
    for i in clothes {
        let clothName = i[1]
        dic[clothName, default: 0] += 1
    }
    
    
    var answer = 1
    
    // (개수 + 1)씩 곱하기
    for (_, count) in dic {
        answer *= (count + 1)
    }
    
    
    
    
    return answer - 1
}