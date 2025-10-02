let N = Int(readLine()!)!
var arr = [Int](repeating: 0, count: N)
for i in 0..<N {
arr[i] = Int(readLine()!)!
}

var visited = [Bool](repeating: false, count: N)
var finished = [Bool](repeating: false, count: N)
var result = [Int]()

func dfs(_ v: Int) {
    visited[v] = true
    let next = arr[v] - 1
    
    if !visited[next] {
        dfs(next)
    } else if !finished[next] {
        var t = next
        repeat {
            result.append(t + 1)
            t = arr[t] - 1
        } while t != next
    }
    
    finished[v] = true
    
    
}

for i in 0..<N {
    if !visited[i] {
        dfs(i)
    }
}

result.sort()
print(result.count)
for num in result {
    print(num)
}
