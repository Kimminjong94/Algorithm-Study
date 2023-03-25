import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    
    var answer: [Int] = []
    var final:[Int] = []
    
    for i in score {
        answer.append(i)
        if answer.min()! <= i && answer.count > k {
            answer.remove(at: answer.firstIndex(of: answer.min()!)!)
            final.append(answer.min()!)
        } else if answer.min()! <= i {
            final.append(answer.min()!)
        }
    }
    return final
}