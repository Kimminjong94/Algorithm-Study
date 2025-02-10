let nm = readLine()!.split(separator: " ").map{Int(String($0))!}

//정점의 갯수로 배열을 만듬
var graph:[[Int]] = Array(repeating: [], count: nm[1])
var visited:[[Bool]] = Array(repeating: Array(repeating: false, count: nm[0]), count: nm[1])

for i in 0..<nm[1] {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    graph[i].append(contentsOf: input)
}


// 이동 방향 (상, 하, 좌, 우)
let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]

func bfs(_ xy: [(Int, Int)]) -> Int {
    var queue = xy
    var index = 0
    var daysPassed = 1

    
    while index < queue.count {
        let nowNode = queue[index]
        index += 1
        visited[nowNode.0][nowNode.1] = true
        
        for i in 0..<4 {
            let nextX = nowNode.0 + dx[i]
            let nextY = nowNode.1 + dy[i]
            
            if nextX >= 0, nextY >= 0, nextX < nm[1], nextY < nm[0], graph[nextX][nextY] == 0, !visited[nextX][nextY] {
                graph[nextX][nextY] = graph[nowNode.0][nowNode.1] + 1
                daysPassed = graph[nowNode.0][nowNode.1] + 1
                visited[nextX][nextY] = true
                queue.append((nextX, nextY))
            }
        }
    }

    for row in graph {
        if row.contains(0) {
            return -1
        }
    }

    
    return daysPassed - 1
}

func solution() {
    
    var coor = [(Int, Int)]()

    for i in 0..<nm[1] {
        for j in 0..<nm[0] {
            if graph[i][j] == 1 {
                coor.append((i, j))
            }
        }
    }
    
    let answer = bfs(coor)
    print(answer)
}

solution()