import Foundation

let RC = readLine()!.split(separator: " ").map {Int($0)!}
let R = RC[0]
let C = RC[1]

var graph:[[String]] = []

for _ in 0..<R {
    let input = Array(readLine()!).map{String($0)}
    graph.append(input)
}

var visted = Array(repeating: Array(repeating: false, count: C), count: R)
let dx = [0,0,1,-1]
let dy = [1,-1,0,0]

var nowSheepCount = 0
var nowWolfCount = 0

func dfs(_ x:Int, _ y:Int) {
    visted[x][y] = true

    if graph[x][y] == "v" {
        nowWolfCount += 1
    } else if graph[x][y] == "o" {
        nowSheepCount += 1
    }

    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx < 0 || ny < 0 || nx >= R || ny >= C || graph[nx][ny] == "#" || visted[nx][ny] {
            continue
        }
        
        if graph[nx][ny] == "." || graph[nx][ny] == "v" || graph[nx][ny] == "o" {
            dfs(nx, ny)
        }
    }
}

var tmpSheepAndWolfCount: (Int, Int) = (0, 0)

for i in 0..<R {
    for j in 0..<C {
        if !visted[i][j] && graph[i][j] != "#" {
            
            dfs(i, j)
            
            if nowSheepCount > nowWolfCount {
                tmpSheepAndWolfCount.0 += nowSheepCount
            } else {
                tmpSheepAndWolfCount.1 += nowWolfCount
            }
            
            nowSheepCount = 0
            nowWolfCount = 0
            
        }
    }
}
print(tmpSheepAndWolfCount.0, tmpSheepAndWolfCount.1)