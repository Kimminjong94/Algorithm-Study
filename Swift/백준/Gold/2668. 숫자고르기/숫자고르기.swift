let n = Int(readLine()!)!
var arr = [Int](repeating: 0, count: n + 1)

for i in 1...n {
    arr[i] = Int(readLine()!)!
}

var visited = [Bool](repeating: false, count: n + 1)
var finished = [Bool](repeating: false, count: n + 1)
var result = Set<Int>()

func dfs(_ start: Int, _ path: inout [Int]) {
    visited[start] = true
    path.append(start)
    
    let next = arr[start]
    if !visited[next] {
        dfs(next, &path)
    } else if !finished[next] {
        // 사이클 발견
        if let idx = path.firstIndex(of: next) {
            for i in idx..<path.count {
                result.insert(path[i])
            }
        }
    }
    
    path.removeLast()
    finished[start] = true
}

for i in 1...n {
    if !visited[i] {
        var path = [Int]()
        dfs(i, &path)
    }
}



let answer = result.sorted()
print(answer.count)
for num in answer {
    print(num)
}