let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nk[0]
let k = nk[1]

var answerArray: [Int] = []
var totalStep: Int = 0

func bfs(_ start: Int, _ target: Int ) -> Int {
    
    var queue: [(pos: Int, step: Int)] = [(start, 0)]
    var visited: Set<Int> = [start]
    var index = 0
    
    while index < queue.count {
        let (current, step) = queue[index]
        index += 1
        
        if current == target {
            return step
        }
        
        let nextPos = [current - 1, current + 1, current * 2]
        
        for next in nextPos {
            if next >= 0, next <= 100000, !visited.contains(next) {
                visited.insert(next)
                queue.append((next, step + 1))
            }
        }
        
    }
    
    return -1
    
}

print(bfs(n, k))