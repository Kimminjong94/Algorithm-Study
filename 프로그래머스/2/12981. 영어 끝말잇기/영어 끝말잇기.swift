import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var saidWord:[String] = [words[0]]

    
    for i in 1..<words.count {
        guard !saidWord.contains(words[i]) else {
            return[(i + 1) % n == 0 ? n : (i + 1) % n, (i + 1) % n == 0 ? (i + 1) / n : ((i + 1) / n) + 1]
        }
        
        if saidWord.last!.last! == words[i].first! {
            saidWord.append(words[i])
        } else {
            return [(i + 1) % n == 0 ? n : (i + 1) % n,(i + 1) % n == 0 ? (i + 1) / n : ((i + 1) / n ) + 1]
        }
    }
    return [0, 0]
}