import Foundation

func solution(_ n: Int) -> [[Int]] {
    var result: [[Int]] = []
    
    func hanoi(_ n: Int, _ from: Int, _ to: Int, _ via: Int) {
        if n == 1 {
            result.append([from, to])
            return
        }
        hanoi(n - 1, from, via, to)  // n-1개를 보조 기둥으로 이동
        result.append([from, to])    // 가장 큰 원판을 목표 기둥으로 이동
        hanoi(n - 1, via, to, from)  // 보조 기둥의 원판들을 목표 기둥으로 이동
    }
    
    hanoi(n, 1, 3, 2)
    return result
}