import Foundation

let NM = readLine()!.split(separator: " ").map {Int($0)!}
let N = NM[0]
let M = NM[1]
var graph = Array(repeating: [Int](), count: N + 1)


for _ in 0..<NM[1] {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])

}

var dist = Array(repeating: -1, count: N + 1)
var queue = [Int]()
var index = 0

queue.append(1)
dist[1] = 0

while index < queue.count {
    let now = queue[index]
    index += 1
    for next in graph[now] {
        if dist[next] == -1 {
            dist[next] = dist[now] + 1
            queue.append(next)
        }
    }
}

let maxDist = dist.max()!

var resultNode = 0
var count = 0

for i in 1...N {
    if dist[i] == maxDist {
        if resultNode == 0 {
            resultNode = i
        }
        count += 1
    }
}

print("\(resultNode) \(maxDist) \(count)")