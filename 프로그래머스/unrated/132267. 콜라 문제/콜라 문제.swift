import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    
    var leftBottle = n
    var answer = 0
    
    while leftBottle > 1 {
        if leftBottle >= a {
            leftBottle -= a
            leftBottle += b
            answer += b
        } else {
            break
        }
    }
    return answer
}