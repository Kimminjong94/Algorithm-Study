import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    
    let newTarget = targets.map{Array($0)}
    var answer: [Int] = []
    print(newTarget)
    
    for target in newTarget {
        var count:[Int] = []
        for i in target {
            count.append(checkIndex(keyMap: keymap, checkChar: i))
        }
        answer.append(count.contains(-1) ? -1 : count.reduce(0, +))
    }
    return answer
}

func checkIndex(keyMap: [String], checkChar: Character) -> Int {
    
    var answerCount: Int = 100
    
    for key in keyMap {
        if let index = key.firstIndex(of: checkChar) {
            let indexOfString = key.distance(from: key.startIndex, to: index)
            if answerCount > indexOfString {
                answerCount = indexOfString + 1
            }
        }
    }
    return answerCount == 100 ? -1 : answerCount
}