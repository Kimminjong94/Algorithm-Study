let MN = readLine()!.split(separator: " ").map {Int($0)!}
let maze = (0..<MN[0]).map { _ in readLine()!.map { Int(String($0))! } }
var visited = Array(repeating: Array(repeating: false, count: MN[1]), count: MN[0])


func bfs(_ startX: Int, _ startY: Int) {
    
    var queue : [(x: Int, y: Int, count: Int)] = [(startX, startY, 1)]
    visited[startX][startY] = true
    
    let dx = [0, -1, 0, 1]
    let dy = [-1, 0, 1, 0]
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        let x = current.x
        let y = current.y
        let count = current.count
        
        if x == MN[0] - 1 && y == MN[1] - 1 {
            print(count)
            return
        }
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && nx < MN[0] && ny >= 0 && ny < MN[1] {
                if maze[nx][ny] == 1 && !visited[nx][ny] {
                    visited[nx][ny] = true
                    queue.append((nx, ny, count + 1))
                }
            }
        }
        
        
    }
    
    
}

bfs(0, 0)