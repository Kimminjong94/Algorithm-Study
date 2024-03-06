import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    
    var answer = 0
    var newA = a
    var newB = b
    
    while newA != newB {
        if newA % 2 != 0 {
            newA += 1
        }
        
        if newB % 2 != 0 {
            newB += 1
        }
        
        newA = newA / 2
        newB = newB / 2
        
        answer += 1
        
    }
    return answer
}