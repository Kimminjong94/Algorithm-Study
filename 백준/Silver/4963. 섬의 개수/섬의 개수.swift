var arr = false

while !arr {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    if input == [0,0] {
        arr = true
    }
    var arr:[[Int]] = []

    for _ in 0..<input[1] {
        let graph = readLine()!.split(separator: " ").map{Int($0)!}
        arr.append(graph)
    }
    if input != [0, 0] {
        print(checkIslandCount(input[0], input[1], arr))
    }
}



func checkIslandCount(_ w: Int, _ h: Int, _ graph: [[Int]]) -> Int {
    var count = 0
    var visited = Array(repeating: Array(repeating: false, count: w), count: h)
    
    for i in 0..<h {
        for j in 0..<w {
            if !visited[i][j] && graph[i][j] == 1 {
                count += 1
                dfs(i, j, graph)
            }
        }
    }
    
    func dfs(_ h: Int, _ w: Int, _ graph: [[Int]]) {
        guard h >= 0 && w >= 0 && h < graph.count && w < graph[0].count && !visited[h][w] else {
            return
        }
        visited[h][w] = true

        let dx = [-1, 0, 1, 0]
        let dy = [0, -1, 0, 1]
        let dx2 = [-1, -1, 1, 1]
        let dy2 = [-1, 1, -1, 1]
    
        if graph[h][w] == 1  {
            for i in 0..<4 {
                dfs(h + dx[i], w + dy[i], graph)
                dfs(h + dx2[i], w + dy2[i], graph)
            }
        }
    }
    
    return count
}