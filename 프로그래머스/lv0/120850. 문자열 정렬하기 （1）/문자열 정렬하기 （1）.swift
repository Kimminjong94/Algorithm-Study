import Foundation

func solution(_ my_string:String) -> [Int] {
    var answer : [String] = []
    
    for i in my_string {
        if !i.isLetter {
            answer.append(String(i))
        }
    }
    return answer.map { Int($0)! }.sorted()
}