import Foundation

func solution(_ n:Int) -> Int {
    var answer = n
    let nRadixCount = String(n, radix: 2).filter{$0 == "1"}.count
    
    while true {
        answer += 1
        let checkRadix = String(answer, radix: 2).filter{$0 == "1"}.count
        if checkRadix == nRadixCount {
            return answer
        }
    }
    return 0
}
