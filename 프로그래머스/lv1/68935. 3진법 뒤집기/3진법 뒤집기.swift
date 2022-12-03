import Foundation


func solution(_ n:Int) -> Int {
    
    var dividedN = n
    var thirdArray: [Int] = []
    var multiplier:Int = 1
    var answerArray: [Int] = []

    while dividedN > 0 {
        thirdArray.append(dividedN % 3)
        dividedN = dividedN / 3
    }

    for i in 0..<thirdArray.count {
        let answer = Array(thirdArray.reversed())[i] * multiplier
        multiplier = multiplier * 3
        answerArray.append(answer)
        }
    
    return answerArray.reversed().reduce(0, +)
}

