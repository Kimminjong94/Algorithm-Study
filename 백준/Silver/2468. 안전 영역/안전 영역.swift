let N = Int(readLine()!)!
var graph:[[Int]] = []
var maxHeight = 0
var visited = Array(repeating: Array(repeating: false, count: N), count: N)
var count = 0
var totalCount:[Int] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    graph.append(input)
    
    if input.max()! > maxHeight {
        maxHeight = input.max()!
    }
}

func dfs(_ col: Int, _ row: Int, _ max: Int) {

    guard col >= 0 && row >= 0 && col < N && row < N && !visited[col][row] else {
        return
    }
    visited[col][row] = true
    
    let dx = [-1, 0, 1, 0]
    let dy = [0, -1, 0, 1]
    
    if graph[col][row] >= max {
        for i in 0..<4 {
            dfs(col + dx[i], row + dy[i], max)
        }
    }
}

for max in stride(from: maxHeight, to: 0, by: -1) {
    visited = Array(repeating: Array(repeating: false, count: N), count: N)
    count = 0
    for col in 0..<N {
        for row in 0..<N {
            if !visited[col][row] && graph[col][row] >= max {
                count += 1
                dfs(col, row, max)
            }
        }
    }
    
    totalCount.append(count)
    
}
print(totalCount.max()!)