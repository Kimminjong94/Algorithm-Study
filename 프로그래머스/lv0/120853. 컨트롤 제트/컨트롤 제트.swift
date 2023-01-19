import Foundation

func solution(_ s:String) -> Int {
    
    var newString = s.split(separator: " ")
    var answer: [String] = []
    
    for value in newString{
        if value == "Z" {
            answer.removeLast()
        } else {
            answer.append(String(value))
        }
    }
    
    return answer.map{Int($0) ?? 0}.reduce(0, +)
}