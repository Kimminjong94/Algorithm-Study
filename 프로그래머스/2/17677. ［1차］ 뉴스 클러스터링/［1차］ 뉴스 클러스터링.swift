import Foundation

func solution(_ str1: String, _ str2: String) -> Int {
    // 1. 두 글자씩 끊어서 다중집합 만들기 (영문자만 포함)
    func makeMultiset(_ str: String) -> [String] {
        let lowercased = str.lowercased()
        var multiset = [String]()
        
        for i in 0..<lowercased.count-1 {
            let start = lowercased.index(lowercased.startIndex, offsetBy: i)
            let end = lowercased.index(lowercased.startIndex, offsetBy: i+1)
            let pair = String(lowercased[start...end])
            
            if pair.range(of: "^[a-z]{2}$", options: .regularExpression) != nil {
                multiset.append(pair)
            }
        }
        return multiset
    }

    let set1 = makeMultiset(str1)
    let set2 = makeMultiset(str2)
    
    // 2. 교집합과 합집합 계산
    var intersectionCount = 0
    var unionCount = 0
    
    var set2Copy = set2
    
    for element in set1 {
        if let index = set2Copy.firstIndex(of: element) {
            intersectionCount += 1
            set2Copy.remove(at: index)
        }
    }
    
    unionCount = set1.count + set2.count - intersectionCount
    
    // 3. 자카드 유사도 계산
    if set1.isEmpty && set2.isEmpty {
        return 65536
    }
    
    let similarity = Double(intersectionCount) / Double(unionCount)
    return Int(similarity * 65536)
}