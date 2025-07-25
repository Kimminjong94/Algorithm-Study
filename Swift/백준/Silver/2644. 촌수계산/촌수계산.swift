let N = Int(readLine()!)!
let compareChonsu = readLine()!.split(separator: " ").map{Int($0)!}
let M = Int(readLine()!)!

var arr: [[Int]] = Array(repeating: [], count: N + 1)
var visited = Array(repeating: false, count: N + 1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    arr[input[0]].append(input[1])
    arr[input[1]].append(input[0])
}

var count = 0


func bfs(_ start: Int, _ end: Int) -> Int {
    var queue: [(node: Int, depth: Int)] = [(start, 0)]
    visited[start] = true

    while !queue.isEmpty {
        let (node, depth) = queue.removeFirst()

        if node == end {
            return depth
        }

        for neighbor in arr[node] {
            if !visited[neighbor] {
                visited[neighbor] = true
                queue.append((neighbor, depth + 1))
            }
        }
    }

    return -1
}
print(bfs(compareChonsu[0], compareChonsu[1]))