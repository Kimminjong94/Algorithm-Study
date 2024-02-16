import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    var checkDuplicateWords = [words[0]]
    
    for i in 1...words.count - 1 {
        // 1. 중복 단어 체크
        if checkDuplicateWords.contains(words[i]) {
            return [(i % n) + 1, (i / n) + 1]
        }
        checkDuplicateWords.append(words[i])
        
        // 2. 끝말잇기가 제대로 진행 되는 지 체크 후 틀린 사람 체크
        if words[i].first != words[i-1].last {
            return [(i % n) + 1, (i / n) + 1]
        }
        
    }
    return [0, 0]
}