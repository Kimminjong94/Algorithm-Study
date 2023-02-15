import Foundation

func solution(_ food:[Int]) -> String {
    
    var foodArray:[Int] = food
    var answerArray:[Int] = [0]
    
    for i in (1..<foodArray.count).reversed() {
        while foodArray[i] > 1 {
            answerArray.insert(i, at: 0)
            foodArray[i] -= 1
            answerArray.append(i)
            foodArray[i] -= 1
        }
    }
    return answerArray.map{String($0)}.joined()
}