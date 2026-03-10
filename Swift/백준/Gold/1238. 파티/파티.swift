import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
let X = input[2]

var graph = Array(repeating: [(Int, Int)](), count: N + 1)
var reverseGraph = Array(repeating: [(Int, Int)](), count: N + 1)

for _ in 0..<M {
    let road = readLine()!.split(separator: " ").map { Int($0)! }
    let start = road[0]
    let end = road[1]
    let cost = road[2]

    graph[start].append((end, cost))
    reverseGraph[end].append((start, cost))
}

func dijkstra(_ start: Int, _ graph: [[(Int, Int)]]) -> [Int] {
    var dist = Array(repeating: Int.max, count: N + 1)
    dist[start] = 0

    var pq: [(Int, Int)] = [(start, 0)]

    while !pq.isEmpty {
        pq.sort { $0.1 < $1.1 }
        let (node, cost) = pq.removeFirst()

        if cost > dist[node] { continue }

        for (next, nextCost) in graph[node] {
            let newCost = cost + nextCost

            if newCost < dist[next] {
                dist[next] = newCost
                pq.append((next, newCost))
            }
        }
    }

    return dist
}

let go = dijkstra(X, reverseGraph)
let back = dijkstra(X, graph)

var answer = 0

for i in 1...N {
    answer = max(answer, go[i] + back[i])
}

print(answer)