let n = Int(readLine()!)!


for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    var location = Array(repeating: Array(repeating: false, count: input[1]), count: input[0])
    var visited = Array(repeating: Array(repeating: false, count: input[1]), count: input[0])
    var count = 0
    
    for _ in 0..<input[2] {
        let input = readLine()!.split(separator: " ").map {Int($0)!}
        let x = input[0]
        let y = input[1]
        
        location[x][y] = true
    }


    func bfs(_ x: Int, _ y: Int) {
        
        var queue = [(x, y)]
        let dx = [0, -1, 0, 1]
        let dy = [1, 0, -1, 0]
        
        while !queue.isEmpty {
            let (x, y) = queue.removeFirst()

            guard x >= 0 && y >= 0 && x < input[0] && y < input[1] && !visited[x][y] else { continue }
            
            visited[x][y] = true
            
            if location[x][y] == true {
                for i in 0..<4 {
                    queue.append((x + dx[i], y + dy[i]))
                }
            }
        }
    }

    for i in 0..<input[0] {
        for j in 0..<input[1] {
            if !visited[i][j] && location[i][j] {
                count += 1
                bfs(i, j)
            }
        }
    }
    
    print(count)

}
