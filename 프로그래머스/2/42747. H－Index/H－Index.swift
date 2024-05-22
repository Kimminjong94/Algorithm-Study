import Foundation

func solution(_ citations:[Int]) -> Int {
    
    
    let citations = citations.sorted(by: >)
    var answer = -1

    for i in citations.indices {
            let value = citations[i]
            let h = i+1
            
            if h > value {
                answer = i
                break
            }
        }
        if answer == -1 {
            return citations.count
        }
    
    
    return answer
    
}