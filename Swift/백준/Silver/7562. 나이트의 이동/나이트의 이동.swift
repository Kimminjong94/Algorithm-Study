import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let mapSize = Int(readLine()!)!
    let startPoint = readLine()!.split(separator: " ").map {Int($0)!}
    let endPoint = readLine()!.split(separator: " ").map {Int($0)!}

    
    findMinAnswer(startPoint, endPoint, mapSize)
   
}


func findMinAnswer(_ startPoint: [Int], _ endPoint: [Int], _ mapSize: Int) {
    
    
    var visited = Array(repeating: Array(repeating: false, count: mapSize), count: mapSize)
    
    let dx = [2, 2, -2, -2, 1, -1, 1, -1]
    let dy = [1, -1, 1, -1, 2, 2, -2, -2]
    
    var queue: [(x: Int, y: Int, dist: Int)] = []
    var index = 0

    queue.append((startPoint[0], startPoint[1], 0))
    visited[startPoint[0]][startPoint[1]] = true
    

    while index < queue.count {
        
        let (x, y, dist) = queue[index]
        index += 1
        
        // 목표를 찾으면 리턴
        if x == endPoint[0] && y == endPoint[1] {
            print(dist)
            return
        }
        
        
        for i in 0..<8 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0, nx < mapSize, ny >= 0, ny < mapSize, !visited[nx][ny] {
                visited[nx][ny] = true
                queue.append((nx, ny, dist + 1))
            }
            
        }
    }

}
