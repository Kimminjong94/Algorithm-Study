import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    
    let sortedRequired = d.sorted(by: <)
    var totalBudget: Int = budget
    
    var answer: Int = 0
    

    for i in 0..<sortedRequired.count {
        if totalBudget - sortedRequired[i] >= 0 {
            totalBudget -= sortedRequired[i]
            answer += 1
        }
    }
    return answer
}