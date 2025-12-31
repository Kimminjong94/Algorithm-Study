import Foundation
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    // 두 행렬의 곱셈 결과에 맞춰서 신규 배열을 구성하고 초기화한다.
    // 예) [2x3] * [2x2] = [2x3] => 두 행렬 중 큰 크기의 갯수로 정답 행렬 구성 
    var answer = Array(repeating: Array(repeating: 0, count: arr2[0].count), count: arr1.count)
    
    for i in 0..<answer.count {
        for j in 0..<answer[i].count {
            for k in 0..<arr1[0].count {
                answer[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }

    return answer
}