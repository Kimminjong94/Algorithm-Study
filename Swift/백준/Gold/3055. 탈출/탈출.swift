import Foundation


let RC = readLine()!.split(separator: " ").map {Int($0)!}
let R = RC[0]
let C = RC[1]

var arr:[[Character]] = []
var waterCoor:[(Int,Int, Int, Bool)] = []
var startCoor = (0, 0)
var goalCoor = (0, 0)
var visited = Array(repeating: Array(repeating: false, count: C), count: R)
var minCount = Int.max

for i in 0..<R {
    let input = Array(readLine()!)
     
    let findWater = input.enumerated().filter { $1 == "*" }.map { (i, $0.offset, 0, true) }
    let findStart = input.enumerated().filter { $1 == "S" }.map { (i, $0.offset) }
    let findGoal = input.enumerated().filter { $1 == "D" }.map { (i, $0.offset) }

    if findStart.count != 0 {
        startCoor = findStart[0]
    }
    
    if findGoal.count != 0 {
        goalCoor = findGoal[0]
    }
    
    waterCoor.append(contentsOf: findWater)
    arr.append(input)
}

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

func bfs(_ x: Int, _ y: Int, _ count: Int) {

    var queue:[(Int, Int, Int, Bool)] = waterCoor
    queue.append((x, y, count, false))
    visited[x][y] = true
    
    while !queue.isEmpty {
        
        let nowCoor = queue.removeFirst()
    
        if (nowCoor.0, nowCoor.1) == goalCoor {
            minCount = min(minCount, nowCoor.2)
            return
        }

        for i in 0..<4 {
            
            let nx = nowCoor.0 + dx[i]
            let ny = nowCoor.1 + dy[i]
            
            if nx < 0 || nx >= R || ny < 0 || ny >= C {
                continue
            }

            if visited[nx][ny] {
                continue
            }

            if arr[nx][ny] == "." {
                queue.append((nx, ny, nowCoor.2 + 1, nowCoor.3))
                visited[nx][ny] = true
            }
            
            if arr[nx][ny] == "D" && !nowCoor.3 {
                queue.append((nx, ny, nowCoor.2 + 1, nowCoor.3))
                visited[nx][ny] = true
            }
        }
    }
}

bfs(startCoor.0, startCoor.1, 0)
print(minCount == Int.max ? "KAKTUS" : minCount)