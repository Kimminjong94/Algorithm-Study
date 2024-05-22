import Foundation

func solution(_ answers:[Int]) -> [Int] {

    let compareFirst = [1,2,3,4,5]
    let compareSecond = [2,1,2,3,2,4,2,5]
    let compareThird = [3,3,1,1,2,2,4,4,5,5]
    
    let answer1 = answers.enumerated().map { $1 == (compareFirst[$0 % compareFirst.count]) }.filter {$0 == true}.count
    let answer2 = answers.enumerated().map { $1 == (compareSecond[$0 % compareSecond.count]) }.filter {$0 == true}.count
    let answer3 = answers.enumerated().map { $1 == (compareThird[$0 % compareThird.count]) }.filter {$0 == true}.count

    let maxValue = [answer1, answer2, answer3].max()!
    
    let answers = [answer1, answer2, answer3].enumerated().map {
        if $1 == maxValue {
            return $0 + 1
        }
         return 0
    }.filter {$0 != 0}
    
    return answers
}