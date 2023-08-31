import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    
    let newA = A.sorted()
    let newB = B.sorted(by: >)
    var answer = 0
    
    for i in 0..<newA.count {
        answer += newA[i] * newB[i]
    }
    
   return answer
}