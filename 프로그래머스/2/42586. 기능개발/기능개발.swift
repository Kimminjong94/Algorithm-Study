import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    let leftProcess = progresses.map{100 - $0}
    let leftDays = leftProcess.enumerated().map { (index, value) -> Int in
        let speed = speeds[index]
        let remain = value
        if remain % speed == 0 {
            return remain / speed
        } else {
            return remain / speed + 1
        }
    }

    var maxDay = leftDays[0]
    var dayCount = 0
    var answer:[Int] = []
        
    for i in leftDays {
        if i > maxDay {
            answer.append(dayCount)
            maxDay = i
            dayCount = 1
        } else {
            dayCount += 1
        }
    }
    
    
    answer.append(dayCount)
    
    return answer

}