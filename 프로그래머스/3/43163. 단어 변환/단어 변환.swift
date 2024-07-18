import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var count = 0
    var visited = Array(repeating: false, count: words.count)
    var test = 0
    
    guard begin != target else {
        return 0
    }
    
    guard words.contains(target) else {
        return 0
    }
    
    func dfs(current: String, depth: Int) {
           // 현재 단어가 목표 단어와 같으면 재귀 종료
           if current == target {
               count = depth
               return
           }

           for i in 0..<words.count {
               if !visited[i] && canTransform(current, words[i]) {
                   visited[i] = true
                   dfs(current: words[i], depth: depth + 1)
                   visited[i] = false
               }
           }
       }
    
    
    func canTransform(_ word1: String, _ word2: String) -> Bool {
         let diff = zip(word1, word2).filter { $0 != $1 }.count
         return diff == 1
     }

     dfs(current: begin, depth: 0)

    return count
}