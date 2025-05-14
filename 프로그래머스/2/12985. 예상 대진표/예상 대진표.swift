import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var A = a % 2 != 0 ? a + 1: a
    var B = b % 2 != 0 ? b + 1: b
    
    var answer = 1
    
    while A != B{
        A = (A / 2) % 2 != 0 ? (A / 2) + 1 : A / 2
        B = (B / 2) % 2 != 0 ? (B / 2) + 1 : B / 2
        answer += 1
    }

    return answer
}