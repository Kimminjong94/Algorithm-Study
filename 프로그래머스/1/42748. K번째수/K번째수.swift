import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var answer: [Int] = []
    
    for i in 0..<commands.count {
        let newArray = array[commands[i][0] - 1..<commands[i][1]].sorted()
        
        answer.append(newArray[commands[i][2] - 1])
    }
    
    return answer
}