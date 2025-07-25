
let NM = readLine()!.split(separator: " ").map { Int($0)! }
var arr: [[Int]] = Array(repeating: [], count: NM[0] + 1)
var visited = Array(repeating: false, count: NM[0] + 1)
var count = 0

for _ in 0..<NM[1] {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr[input[0]].append(input[1])
    arr[input[1]].append(input[0])
}

for i in 1..<arr.count {
    if !visited[i] {
        count += 1
        dfs(i)
    }
}

func dfs(_ v: Int) {
    
    visited[v] = true
    
    for i in arr[v] {
        if !visited[i] {
            visited[i] = true
            dfs(i)
        }
    }
}

print(count)
