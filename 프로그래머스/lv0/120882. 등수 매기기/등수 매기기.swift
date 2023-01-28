import Foundation

func solution(_ score:[[Int]]) -> [Int] {

    let newScore = score.map{Float($0[0] + $0[1]) / 2}
    let answer = newScore.map{ newScore.sorted(by: >).firstIndex(of: $0)! + 1 }
    
    return answer
}
