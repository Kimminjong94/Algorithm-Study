import Foundation

func solution(_ s:String) -> String {

    var totalAnswer: [String] = []
    
    for word in s.components(separatedBy: " ") {
        
        var answer: String = ""

        for (index, character) in word.enumerated() {
            if index % 2 == 0 {
                answer.append(character.uppercased())
            } else {
                answer.append(character.lowercased())
            }
            
        }

        totalAnswer.append(answer)
        
    }
    return totalAnswer.joined(separator: " ")
}