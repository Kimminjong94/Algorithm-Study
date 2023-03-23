import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    
    guard score.count > m else {return 0}
    
    var newScore = score.sorted(by: >)
    var answer = 0
    
    for i in 1...score.count / m {
        answer += (newScore[i * (m-1) + (i-1)] * m)
    }
    
    return answer
}