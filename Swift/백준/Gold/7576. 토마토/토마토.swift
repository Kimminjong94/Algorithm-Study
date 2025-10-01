let MN = readLine()!.split(separator: " ").map {Int($0)!}
let grid = (0..<MN[1]).map {_ in readLine()!.split(separator: " ").map {Int($0)!}}
var visited = Array(repeating: Array(repeating: false, count: MN[0]), count: MN[1])
var location : [(Int, Int, Int)] = []
var day_count = 0
var isNotCooked = true

for i in 0..<grid.count {
    for j in 0..<grid[i].count {
        if grid[i][j] == 1 { location.append((i, j, 0))
        } else if grid[i][j] == -1 {
            visited[i][j] = true }
    }
}

func bfs() {
    var queue: [(Int, Int, Int)] = location
    var index = 0
    let dx = [-1, 0, 1, 0]
    let dy = [0, -1, 0, 1]
    
    while index < queue.count {
        let (x, y, z) = queue[index]
        index += 1
        day_count = z
        visited[x][y] = true
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && nx < MN[1] && ny >= 0 && ny < MN[0] && grid[nx][ny] == 0 && !visited[nx][ny] {
                queue.append((nx, ny, z + 1))
                visited[nx][ny] = true
            }
        }
    }
   
}


bfs()
for i in 0..<visited.count {
    for j in 0..<visited[i].count {
        if visited[i][j] == false {
            isNotCooked = false
            break
        }
    }
}

if isNotCooked {
    print(day_count)
} else {
    print(-1)
}