import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    
    //그래프 자료구조 생성
    var graph: [Int: [Int]] = [:]
    //그래프 초기화
    for i in 1...n{
        graph.updateValue([], forKey: i)
    }
    
    for wire in wires{
        graph[wire[0]]?.append(wire[1])
        graph[wire[1]]?.append(wire[0])
    }
    ///
    
    //BFS로 그래프를 순회하며 연결된 노드의 개수를 센다
    func bfs(_ start: Int) -> Int{
        var queue = [Int]()
        var count = 0
        queue.append(start)
        visited[start] = true
        
        while !queue.isEmpty{
            let now = queue.removeFirst()
            count += 1
            
            for i in graph[now]!{
                if !visited[i]{
                    queue.append(i)
                    visited[i] = true
                }
            }
        }
        return count
    }
    
    var visited = [Bool](repeating: false, count: n + 1)
    visited[1] = true
    let count = bfs(2)
    var result = abs(count - (n - count))
    
    for i in 1...n{
        visited = Array(repeating: false, count: n + 1)
        visited[i] = true
        let count = bfs(1)
        result = min(result, abs(count  - (n - count)))
        print(result)
    }
    return result
}