
import Foundation


var arr: [[Int]] = []

for _ in 0..<5 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(input)
}

var result = Set<String>()

let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]

func dfs(_ x: Int, _ y: Int, _ depth: Int, _ current: String) {
    
    if depth == 6 {
        result.insert(current)
        return
    }
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx >= 0 && nx < 5 && ny >= 0 && ny < 5 {
            dfs(nx, ny, depth + 1, current + String(arr[nx][ny]))
        }
    }
}

for i in 0..<5 {
    for j in 0..<5 {
        dfs(i, j, 1, String(arr[i][j]))
    }
}

print(result.count)