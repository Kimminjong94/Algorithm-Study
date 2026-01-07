import Foundation


let NK = readLine()!.split(separator: " ").map{Int($0)!}
let start = NK[0]
let goal = NK[1]
var answer = 0

var visited = Array(repeating: false, count: 100001)
func bfs() {
    var queue:[(Int,Int)] = [(start, 0)]
    var index = 0

    while index < queue.count {
        
        let (nowX, count) = queue[index]
        index += 1
        guard nowX >= 0 && nowX < visited.count else { continue }
        guard !visited[nowX] else { continue }
        
        guard nowX != goal else {
            answer = count
            return
        }
    
        visited[nowX] = true

        queue.append((nowX+1, count+1))
        queue.append((nowX-1, count+1))
        queue.append((nowX*2, count+1))
    }
}

bfs()
print(answer)