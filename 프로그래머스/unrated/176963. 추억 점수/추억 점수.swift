import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    let zippedPerson = zip(name, yearning)
    var answer: [Int] = []
    
    photo.forEach { sub in
        var addedPoint = 0
        sub.forEach { element in
            addedPoint += zippedPerson.filter{$0.0 == element}.map{$0.1}.reduce(0, +)
        }
        answer.append(addedPoint)
    }
    return answer
}