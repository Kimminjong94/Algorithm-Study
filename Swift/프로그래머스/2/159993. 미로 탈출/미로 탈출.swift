import Foundation

func solution(_ maps:[String]) -> Int {
    let maze = maps.map { Array($0) }
    let n = maze.count
    let m = maze[0].count
    
    // BFS 함수
    func bfs(_ start: (Int, Int), _ target: Character) -> Int {
        var visited = Array(repeating: Array(repeating: false, count: m), count: n)
        var queue = [(start.0, start.1, 0)]
        visited[start.0][start.1] = true
        
        let dx = [1, -1, 0, 0]
        let dy = [0, 0, 1, -1]
        
        while !queue.isEmpty {
            let (x, y, dist) = queue.removeFirst()
            
            if maze[x][y] == target {
                return dist
            }
            
            for i in 0..<4 {
                let nx = x + dx[i]
                let ny = y + dy[i]
                if nx >= 0, nx < n, ny >= 0, ny < m,
                   !visited[nx][ny], maze[nx][ny] != "X" {
                    visited[nx][ny] = true
                    queue.append((nx, ny, dist + 1))
                }
            }
        }
        
        return -1
    }
    
    // 좌표 찾기
    var start = (0, 0), lever = (0, 0)
    for i in 0..<n {
        for j in 0..<m {
            if maze[i][j] == "S" { start = (i, j) }
            if maze[i][j] == "L" { lever = (i, j) }
        }
    }
    
    // S → L, L → E
    let sToL = bfs(start, "L")
    if sToL == -1 { return -1 }
    let lToE = bfs(lever, "E")
    if lToE == -1 { return -1 }
    
    return sToL + lToE
}