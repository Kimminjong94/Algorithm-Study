let n = Int(readLine()!)!
let m = Int(readLine()!)!

//정점의 갯수로 배열을 만듬
var graph:[[Int]] = Array(repeating: [], count: n + 1)
var visited = Array(repeating: false, count: n + 1)
var answer = 0

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let a = input[0]
    let b = input[1]
    
    graph[a].append(b)
    graph[b].append(a)
}

func dfs(_ v: Int) -> Int {
    visited[v] = true
    answer += 1
    
    for i in graph[v] {
        if !visited[i] {
            dfs(i)

        }
    }
    return answer
}

print(dfs(1) - 1)