import Foundation

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    var maxDungeons = 0
    
    func explore(_ fatigue: Int, _ count: Int, _ visited: inout [Bool]) {
        maxDungeons = max(maxDungeons, count)
        
        for i in 0..<dungeons.count {
            let required = dungeons[i][0]
            let cost = dungeons[i][1]
            
            if !visited[i] && fatigue >= required {
                visited[i] = true
                explore(fatigue - cost, count + 1, &visited)
                visited[i] = false
            }
        }
    }
    
    var visited = [Bool](repeating: false, count: dungeons.count)
    explore(k, 0, &visited)
    
    return maxDungeons
}