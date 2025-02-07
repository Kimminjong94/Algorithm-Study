let n = readLine()!.split(separator: " ").map{Int(String($0))!}

//정점의 갯수로 배열을 만듬
var graph:[[Int]] = Array(repeating: [], count: n[0] + 1)
var visited = Array(repeating: false, count: n[0] + 1)
var answer = 0

for _ in 0..<n[1] {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let a = input[0]
    let b = input[1]

    graph[a].append(b)
    graph[b].append(a)

}


func dfs(_ v:Int) {
    if visited[v] {
        return
    }
    visited[v] = true

    for i in graph[v] {
        dfs(i)

    }
  
    
}


func check(_ v: Int) {
    for i in 0..<visited.count {
        if !visited[i] {
            answer += 1
            dfs(i)
        }
    }
    
}
check(1)
print(answer - 1)