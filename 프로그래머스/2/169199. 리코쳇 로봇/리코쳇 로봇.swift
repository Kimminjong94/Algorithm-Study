import Foundation


func solution(_ board: [String]) -> Int {
    let h = board.count
    let w = board[0].count
    let map = board.map { Array($0) }

    var start = (0, 0)
    var goal = (0, 0)
    for i in 0..<h {
        for j in 0..<w {
            if map[i][j] == "R" {
                start = (i, j)
            }
            if map[i][j] == "G" {
                goal = (i, j)
            }
        }
    }
    
    var visited = Array(repeating: Array(repeating: false, count: w), count: h)
    let dx = [-1, 0, 1, 0]
    let dy = [0, 1, 0, -1]

    var queue = [(x: Int, y: Int, dist: Int)]()
    queue.append((start.0, start.1, 0))
    visited[start.0][start.1] = true

    while !queue.isEmpty {
        let cur = queue.removeFirst()
        let x = cur.x
        let y = cur.y
        let dist = cur.dist

        if x == goal.0, y == goal.1 {
            return dist
        }

        for dir in 0..<4 {
            var nx = x
            var ny = y

            while true {
                let tx = nx + dx[dir]
                let ty = ny + dy[dir]

                if tx < 0 || tx >= h || ty < 0 || ty >= w { break }
                if map[tx][ty] == "D" { break }

                nx = tx
                ny = ty
            }

            if !visited[nx][ny] {
                visited[nx][ny] = true
                queue.append((nx, ny, dist + 1))
            }
        }
    }

    return -1
}