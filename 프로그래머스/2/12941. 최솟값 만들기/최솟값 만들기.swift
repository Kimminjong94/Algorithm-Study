import Foundation


func solution(_ A:[Int], _ B:[Int]) -> Int {
    let A = A.sorted(by: <)
    let B = B.sorted(by: >)
    var prefix = 0
    
    for i in 0..<A.count {
        prefix += A[i] * B[i]
    }
    return prefix
}
