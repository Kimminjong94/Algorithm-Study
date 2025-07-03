import Foundation

func solution(_ weights:[Int]) -> Int64 {
    var answer = 0
    var same = Array(repeating: 0, count: 1001)
    var multi = Array(repeating: 0, count: 4001)
    
    for weight in weights {
        let m = weight
        let m2 = weight * 2
        let m3 = weight * 3
        let m4 = weight * 4
        
        same[m] += 1
        multi[m2] += 1
        multi[m3] += 1
        multi[m4] += 1
    }
    
    for weight in weights {
        let m = weight
        let m2 = weight * 2
        let m3 = weight * 3
        let m4 = weight * 4
        
        answer += same[m] - 1
        answer += multi[m2] - same[m]
        answer += multi[m3] - same[m]
        answer += multi[m4] - same[m]
    }
    
    return Int64(answer / 2)
}