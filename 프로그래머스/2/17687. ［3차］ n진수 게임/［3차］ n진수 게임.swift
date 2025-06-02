import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var count = t
    var myturn = p - 1
    
    let numbers = Array(Array(0...(m * t)).map{String($0, radix: n)}.reduce("", +))
    
    var answer:[String] = []
    
    while count != 0 {
        answer.append(String(numbers[myturn]).uppercased())
        myturn += m
        count -= 1
    }
    
    
    return answer.reduce("", +)
}