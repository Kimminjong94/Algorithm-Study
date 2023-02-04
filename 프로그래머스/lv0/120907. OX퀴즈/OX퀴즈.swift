import Foundation

func solution(_ quiz:[String]) -> [String] {
    
    var answer: [String] = []
    
    for i in quiz {
        let newI = i.split(separator: " ")
        
        if newI.contains("-") {
            let newAnswer = Int(newI[0])! - Int(newI[2])!
            
            if newAnswer == Int(newI[4])! {
                answer.append("O")
            } else {
                answer.append("X")
            }
        
        } else {
            let newAnswer = Int(newI[0])! + Int(newI[2])!
            
            if newAnswer == Int(newI[4])! {
                answer.append("O")
            } else {
                answer.append("X")
            }
        }
    }
    return answer
}