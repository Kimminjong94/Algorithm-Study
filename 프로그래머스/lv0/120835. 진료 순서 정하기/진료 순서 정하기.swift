import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    
    var storeEmegency = [Int:Int]()
    var answer:[Int] = []

    
    for (index, value) in emergency.sorted(by: >).enumerated() {
        storeEmegency[index + 1] = value
    }
    
    for i in emergency {
        for j in storeEmegency {
            if i == j.value {
                answer.append(j.key)
            }
        }
    }
    return answer
}
