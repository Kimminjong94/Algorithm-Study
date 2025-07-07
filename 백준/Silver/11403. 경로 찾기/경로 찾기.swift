import Foundation

let n = Int(readLine()!)!
var graph = [[Int]]()

for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    graph.append(row)
}

// 플로이드–워셜 알고리즘
for k in 0..<n {
    for i in 0..<n {
        for j in 0..<n {
            if graph[i][k] == 1 && graph[k][j] == 1 {
                graph[i][j] = 1
            }
        }
    }
}

// 출력
for i in 0..<n {
    print(graph[i].map { String($0) }.joined(separator: " "))
}