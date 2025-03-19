let N = Int(readLine()!)!
var graph:[[String]] = []
var graph2:[[String]] = []

for _ in 0..<N {
    let input = Array(readLine()!).map{String($0)}
    graph.append(input)
    let changedInput = input.map{$0 == "R" ? "G" : $0}
    graph2.append(changedInput)
}

var visited1 = Array(repeating: Array(repeating: false, count: graph[0].count), count: graph.count)
var count1 = 0
var count2 = 0

func dfs(_ x: Int, _ y: Int, _ char: String, _ graph: [[String]]) {
    guard x >= 0 && x < graph.count && y >= 0 && y < graph.count && !visited1[x][y] && graph[x][y] == char else {
        return
    }

    visited1[x][y] = true
    let dx = [0,1,0,-1]
    let dy = [1,0,-1,0]
    
    for i in 0..<4 {
        dfs(x + dx[i], y + dy[i], char, graph)
    }
}

for i in 0..<graph.count {
    for j in 0..<graph[i].count {
        if !visited1[i][j] {
            count1 += 1
            dfs(i, j, graph[i][j], graph)
        }
    }
}

visited1 = Array(repeating: Array(repeating: false, count: graph[0].count), count: graph.count)
for i in 0..<graph.count {
    for j in 0..<graph[i].count {
        if !visited1[i][j] {
            count2 += 1
            dfs(i, j, graph2[i][j], graph2)
        }
    }
}

print(count1, count2)