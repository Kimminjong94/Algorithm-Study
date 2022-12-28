import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    var answer: [Int] = box.map{ $0 / n }
    return answer.reduce(1, *)
}