let NM = readLine()!.split(separator: " ").map{Int($0)!}
var ladder = [Int: Int]()
var snake = [Int: Int]()

for _ in 0..<NM[0] {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    ladder[input[0]] = input[1]
}
for _ in 0..<NM[1] {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    snake[input[0]] = input[1]
}

var visited = Array(repeating: false, count: 101)

func bfs() -> Int {
    var queue: [(pos: Int, cnt: Int)] = [(1, 0)]
    visited[1] = true
    
    while !queue.isEmpty {
        let (pos, cnt) = queue.removeFirst()
        
        if pos == 100 { // 도착
            return cnt
        }
        
        for dice in 1...6 {
            var next = pos + dice
            if next > 100 { continue }
            
            // 사다리 or 뱀 적용
            if let to = ladder[next] {
                next = to
            } else if let to = snake[next] {
                next = to
            }
            
            if !visited[next] {
                visited[next] = true
                queue.append((next, cnt + 1))
            }
        }
    }
    return -1
}

print(bfs())