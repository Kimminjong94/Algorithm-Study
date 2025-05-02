let T = Int(readLine()!)!

for _ in 0..<T {
    let sizeInput = readLine()!.split(separator: " ").map { Int($0)! }
    let M = sizeInput[0]
    let N = sizeInput[1]
    let K = sizeInput[2]

    var graph = Array(repeating: Array(repeating: 0, count: M), count: N)
    var visited = Array(repeating: Array(repeating: false, count: M), count: N)

    for _ in 0..<K {
        let loc = readLine()!.split(separator: " ").map { Int($0)! }
        let x = loc[0]
        let y = loc[1]
        graph[y][x] = 1
    }

    func dfs(_ x: Int, _ y: Int) {
        let dx = [0, -1, 0, 1]
        let dy = [1, 0, -1, 0]

        visited[y][x] = true

        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]

            if nx >= 0 && ny >= 0 && nx < M && ny < N {
                if graph[ny][nx] == 1 && !visited[ny][nx] {
                    dfs(nx, ny)
                }
            }
        }
    }

    var wormCount = 0

    for y in 0..<N {
        for x in 0..<M {
            if graph[y][x] == 1 && !visited[y][x] {
                dfs(x, y)
                wormCount += 1
            }
        }
    }

    print(wormCount)
}