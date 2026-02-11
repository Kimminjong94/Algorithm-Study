import Foundation

let NM = readLine()!.split(separator: " ").map {Int($0)!}
var hackingPossible = Array(repeating: [Int](), count: NM[0] + 1)
var maxHackingCount = 0
var answerArr = [Int]()

for _ in 0..<NM[1] {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    hackingPossible[input[1]].append(input[0])
}

for i in 1..<hackingPossible.count {
    
    let maxCount = dfs(i)
    
    if maxCount > maxHackingCount {
        answerArr = [i]
        maxHackingCount = maxCount
    } else if maxCount == maxHackingCount {
        answerArr.append(i)
    }
    
}

func dfs(_ node: Int) -> Int {
    var visited = Array(repeating: false, count: NM[0] + 1)

    var queue: [Int] = [node]
    visited[node] = true
    
    var index = 0
    var count = 1


    while index < queue.count {
        
        let currentNode = queue[index]
        
        for next in hackingPossible[currentNode] {
               if !visited[next] {
                   visited[next] = true
                   queue.append(next)
                   count += 1
               }
           }
    
        index += 1
    }
    return count
}
print(answerArr.map{String($0)}.joined(separator: " "))