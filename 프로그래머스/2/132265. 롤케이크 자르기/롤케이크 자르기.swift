import Foundation

func solution(_ topping:[Int]) -> Int {
    var answer = 0
    var leftDict = [Int: Int]()
    var rightDict = [Int: Int]()

    // 처음엔 모든 토핑을 오른쪽에 넣어둠
    for t in topping {
        rightDict[t, default: 0] += 1
    }

    for t in topping {
        // 왼쪽으로 옮기기
        leftDict[t, default: 0] += 1
        rightDict[t]! -= 1
        if rightDict[t]! == 0 {
            rightDict.removeValue(forKey: t)
        }

        // 두 쪽의 서로 다른 토핑 수 비교
        if leftDict.count == rightDict.count {
            answer += 1
        }
    }

    return answer
}