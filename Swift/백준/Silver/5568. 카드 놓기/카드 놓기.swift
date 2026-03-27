import Foundation

let n = Int(readLine()!)!
let k = Int(readLine()!)!

var cards: [String] = []
for _ in 0..<n {
    cards.append(readLine()!)
}

var visited = Array(repeating: false, count: n)
var result = Set<String>()

func dfs(_ depth: Int, _ current: String) {
    if depth == k {
        result.insert(current)
        return
    }

    for i in 0..<n {
        if !visited[i] {
            visited[i] = true
            dfs(depth + 1, current + cards[i])
            visited[i] = false
        }
    }
}

dfs(0, "")

print(result.count)