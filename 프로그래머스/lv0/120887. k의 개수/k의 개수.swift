import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    
    let new = Array(i...j).filter{String($0).contains(String(k))}.map{String($0)}.joined()
    var answer = 0
    
    for i in new {
        if String(i) == String(k) {
            answer += 1
        }
    }
    return answer
}