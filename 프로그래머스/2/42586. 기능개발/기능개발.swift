import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    let leftPercent = progresses.map {100 - $0}
    var leftDays: [Int] = []
    
    for (index, value) in leftPercent.enumerated() {
        if value % speeds[index] == 0 {
            leftDays.append(value/speeds[index])
        } else {
            leftDays.append(value/speeds[index] + 1)
        }
    }

    var answer: [Int] = []
    var tmpCount = 0
    var tmpAnswer = 0
    
    for i in leftDays {

        if i > tmpAnswer {
            tmpAnswer = i
            if tmpCount != 0 {
                answer.append(tmpCount)
                tmpCount = 0
            }
            tmpCount += 1
        } else {
            tmpCount += 1
        }
    }
    answer.append(tmpCount)
    return answer

}