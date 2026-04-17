import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
var graph = Array(repeating: Set<Int>(), count: N + 1)

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    let a = line[0]
    let b = line[1]
    graph[a].insert(b)
    graph[b].insert(a)
}

var count = 0

for i in 1...N-2 {
    for j in i+1...N-1 {
        if graph[i].contains(j) { continue }
        
        for k in j+1...N {
            if graph[i].contains(k) { continue }
            if graph[j].contains(k) { continue }
            
            count += 1
        }
    }
}

print(count)