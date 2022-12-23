import Foundation

func solution(_ my_string:String) -> String {
    
    var answer: [String] = []
    
    for i in my_string {
        if i.isLowercase {
            answer.append(i.uppercased())
        } else {
            answer.append(i.lowercased())
        }
    }
    return answer.joined()
}