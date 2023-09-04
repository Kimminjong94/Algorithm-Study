import Foundation

func solution(_ s:String) -> [Int] {
    
    var count = 0
    var removedZero = 0
    var newS = s

    while newS != "1" {
        count += 1
        removedZero += newS.filter{$0 == "0"}.count
        newS = newS.filter{$0 != "0"}
        newS = String(newS.filter{$0 != "0"}.count, radix: 2)
    }
    return [count, removedZero]
}