import Foundation


let RCK = readLine()!.split(separator: " ").map {Int($0)!}
let R = RCK[0]
let C = RCK[1]
let K = RCK[2]
var coor:[[Character]] = []

for _ in 0..<R {
    let input = Array(readLine()!)
    coor.append(input)
}

var visited = Array(repeating: Array(repeating: false, count: RCK[1]), count: RCK[0])
let goal:(Int, Int) = (0, C - 1)
var answer = 0

let dx: [Int] = [-1, 1, 0, 0]
let dy: [Int] = [0, 0, -1, 1]

func dfs(_ x: Int, _ y: Int, _ depth: Int) {    
    if depth == K {
        if (x, y) == goal {
            answer += 1
        }
        return
    }
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx < 0 || nx >= R || ny < 0 || ny >= C {
            continue
        }

        if coor[nx][ny] == "." && !visited[nx][ny]  {
            visited[nx][ny] = true

            dfs(nx, ny, depth + 1)
            visited[nx][ny] = false
        }
    }
}

visited[R - 1][0] = true

dfs(R - 1, 0, 1)
print(answer)
