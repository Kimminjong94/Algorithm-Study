import Foundation

let NMV = readLine()!.split(separator: " ").map{Int($0)!}
let N = NMV[0]
let M = NMV[1]
let V = NMV[2]

var graph:[[Int]] = Array(repeating: [Int](), count: N + 1)

for _ in 0..<M{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    let start = input[0]
    let end = input[1]
    
    graph[start].append(end)
    graph[end].append(start)
}

let sortedGraph = graph.map{$0.sorted()}
var visitedDfs = Array(repeating: false, count: N + 1)
var dfsAnswer:[Int] = []

func dfs(_ start: Int) {
    
    if !visitedDfs[start] {
        dfsAnswer.append(start)
    }
    
    visitedDfs[start] = true

    
    for next in sortedGraph[start]{
        if !visitedDfs[next] {
            dfs(next)
        }
    }
}

for i in 1...N {
    if !visitedDfs[i] {
        dfs(V)
    }
}

var visitedBfs = Array(repeating: false, count: N + 1)
var bfsAnswer:[Int] = []

func bfs(_ start: Int) {
    
    var queue = [start]
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        
        if !visitedBfs[node] {
            bfsAnswer.append(node)
        }
        
        visitedBfs[node] = true
        
        for i in sortedGraph[node] {
            if !visitedBfs[i] {
                queue.append(i)


            }
        }
    }
    
}

for i in 1...N {
    if !visitedBfs[i] {
        bfs(V)
    }
}

print(dfsAnswer.map{String($0)}.joined(separator: " "))
print(bfsAnswer.map{String($0)}.joined(separator: " "))