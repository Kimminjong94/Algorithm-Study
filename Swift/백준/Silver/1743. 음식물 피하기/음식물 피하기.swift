let NMK = readLine()!.split(separator: " ").map{Int($0)!}
var trash = Array(repeating: Array(repeating: 0, count: NMK[1]), count: NMK[0])

for _ in 0..<NMK[2] {
    let input = readLine()!.split(separator: " ").map{Int($0)! - 1}
    let x = input[0]
    let y = input[1]
    
    trash[x][y] = 1
}

var visited = Array(repeating: Array(repeating: false, count: NMK[1]), count: NMK[0])
var maxCount = 0


func bfs(_ x: Int, _ y: Int) -> Int {
    var queue = [(x, y)]
    var count = 1
    visited[x][y] = true
    
    let dx = [0, -1, 0, 1]
    let dy = [1, 0, -1, 0]
    
    while !queue.isEmpty {
        let now = queue.removeFirst()
        
        for i in 0..<4 {
            let nx = now.0 + dx[i]
            let ny = now.1 + dy[i]
            
            if nx >= 0 && nx < NMK[0] && ny >= 0 && ny < NMK[1] && !visited[nx][ny] && trash[nx][ny] == 1 {
                visited[nx][ny] = true

                queue.append((nx, ny))
                count += 1
            }
        }
    }
    
    return count
 
}

for i in 0..<NMK[0] {
    for j in 0..<NMK[1] {
        
        if !visited[i][j] && trash[i][j] == 1 {
           let size = bfs(i, j)
            
            maxCount = max(maxCount, size)
        }
    }
}
print(maxCount)
