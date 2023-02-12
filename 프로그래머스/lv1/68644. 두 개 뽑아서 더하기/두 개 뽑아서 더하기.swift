import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var answer:Set<Int> = []
    
    for (index,value) in numbers.enumerated() {
        for (jIndex,Jvalue) in numbers.enumerated() {
            if index != jIndex {
                answer.insert(value + Jvalue)

            }
            
            
        }
    }
    return Array(answer.sorted())
}