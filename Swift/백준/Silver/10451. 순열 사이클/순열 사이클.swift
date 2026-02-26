import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let N = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map {Int($0)! - 1}
    
    print(findCycle(N, arr))
}


func findCycle(_ n: Int, _ arr: [Int]) -> Int {
    
    var visited = Array(repeating: false, count: n)
    var cycleCount = 0
    
    for i in 0..<n {
        if !visited[i] {
            dfs(i)
            cycleCount += 1
        }
    }
    
    func dfs(_ node: Int) {
        guard !visited[node] else { return }
        visited[node] = true
        dfs(arr[node])
    }
    
    return(cycleCount)
}