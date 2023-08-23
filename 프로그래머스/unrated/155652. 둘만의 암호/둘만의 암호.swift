import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz").filter { !skip.contains($0) }
    var answerString:[String] = []
    
    for answer in Array(s) {
        if let answerIndex = alphabet.firstIndex(of: answer) {
            
            var answer = answerIndex + index
            
            if answerIndex + index >= alphabet.count {
                answer %= alphabet.count
                print(answer)
                answerString.append(String(alphabet[answer]))
            } else {
                answerString.append(String(alphabet[answer]))
            }
        }
    }
    
    return answerString.reduce("", +)
}