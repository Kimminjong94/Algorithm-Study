let n = Int(readLine()!)!
var graph:[[Int]] = Array(repeating: [], count: n + 1)
var parent = Array(repeating: 0, count: n + 1)

for _ in 0..<n - 1 {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    graph[input[1]].append(input[0])
    graph[input[0]].append(input[1])
}

var queue = [1]
while !queue.isEmpty {
    let node = queue.removeFirst()
    for next in graph[node] {
        if parent[next] == 0 {
            parent[next] = node
            queue.append(next)
        }
    }
}


for i in 2...n {
    print(parent[i])
}