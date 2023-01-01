import Foundation

func solution(_ n:Int) -> Int {
    
    var answer: Int = 1
    
    while (answer * 6) % n != 0 {
        answer += 1
    }
    return answer
    
}