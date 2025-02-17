import Foundation

func solution(_ topping:[Int]) -> Int {
    var answer = 0
    var chulsooDict = [Int: Int]()
    var brotherDict = [Int: Int]()

    for t in topping {
          brotherDict[t, default: 0] += 1
      }
    
    for t in topping {
        // 철수에게 토핑 추가
        chulsooDict[t, default: 0] += 1
        
        // 동생의 토핑 개수 감소
        if let count = brotherDict[t] {
            if count == 1 {
                brotherDict[t] = nil  // 마지막 남은 토핑이면 삭제
            } else {
                brotherDict[t]! -= 1
            }
        }
        
        if chulsooDict.count == brotherDict.count {
            answer += 1
        }
    }
      
    return answer
}
