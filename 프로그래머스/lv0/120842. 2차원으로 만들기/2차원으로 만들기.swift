import Foundation

func solution(_ numList: [Int], _ n: Int) -> [[Int]] {
    var answer = Array(repeating: Array(repeating: 0, count: n), count: numList.count / n)
    var count = 0

    for i in answer.indices {
        for j in answer[i].indices {
            answer[i][j] = numList[count]
            count += 1
        }
    }
    return answer
}