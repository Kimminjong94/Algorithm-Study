import Foundation

let input = readLine()!.components(separatedBy: " ").map {Int($0)!}



func bfs(_ start: Int, _ count: Int) -> String {
    
    var queue: [(Int, Int)] = [(start, count)]
    var index = 0
    var visited = Array(repeating: false, count: input[0] + 1)
    visited[start] = true

    while index < queue.count {
        
        
        let nowFloor = queue[index].0
        let count = queue[index].1
        let nexUpFloor = nowFloor + input[3]
        let nextDownFloor = nowFloor - input[4]
        
        if nowFloor == input[2] {
            return "\(count)"
        }
        
        if nexUpFloor <= input[0] && !visited[nexUpFloor] {
            visited[nexUpFloor] = true

            queue.append( (nexUpFloor, count + 1) )
        }
        
        if nextDownFloor >= 1 && !visited[nextDownFloor] {
            visited[nextDownFloor] = true

            queue.append( (nextDownFloor, count + 1) )
        }
        
        index += 1
    }
    return "use the stairs"
    
}
print(bfs(input[1], 0))