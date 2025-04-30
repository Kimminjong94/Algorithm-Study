let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Character]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { $0 })
}

// 벽을 한 번 부수고 방문헀는지, 안 부수고 방문했는지 여부를 알기 위한 3차원 배열
var visited = [[[Bool]]](repeating: [[Bool]](repeating: [Bool](repeating: false, count: m), count: n), count: 2)

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var answer = -1

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func bfs(y: Int, x: Int) {
    var queue = [(y, x, 0, 1)]
    var index = 0
    
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        
        // 벽 부순 횟수
        let count = queue[index].2
        
        let depth = queue[index].3
        
        if y == n - 1 && x == m - 1 {
            answer = depth
            break
        }
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if !isValidCoord(y: ny, x: nx) {
                continue
            }
            
            // 벽이 아니고, 방문하지 않았다면 방문
            if graph[ny][nx] == "0" && !visited[count][ny][nx] {
                visited[count][ny][nx] = true
                queue.append((ny, nx, count, depth + 1))
                continue
            }
            
            // 벽이고, 벽을 부순 횟수가 0회라면 벽 부수고 방문
            if graph[ny][nx] == "1" && count == 0 && !visited[count + 1][ny][nx] {
                visited[count + 1][ny][nx] = true
                queue.append((ny, nx, count + 1, depth + 1))
                continue
            }
        }
        index += 1
        
    }
}

bfs(y: 0, x: 0)
print(answer)