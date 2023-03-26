import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    
    var answer: [Int] = []
    
    for value in 1...number {
        var divisorCount = 0
        
        for i in 1...Int(sqrt(Double(value))) {
            if value % i == 0 {
                divisorCount += 1
                if i != value / i {
                    divisorCount += 1
                }
            }
        }
        answer.append(divisorCount)
    }
    return answer.map{$0 > limit ? power : $0}.reduce(0, +)
}