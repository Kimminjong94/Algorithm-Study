import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var answer = 0
    
    var section = Array(section.map { $0 - 1 }.reversed())
    
   
    while !section.isEmpty {
     
        var startPoint = section.last!
        
        if startPoint + m > n {
           
            startPoint -= (startPoint + m - n)
        }
        let endPoint = startPoint + m
        answer += 1
        
        while !section.isEmpty && section.last! < endPoint {
            section.removeLast()
        }
    }
    
    return answer
}