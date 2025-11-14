import Foundation

func solution(_ str1: String, _ str2: String) -> Int {
    func makeMultiset(_ str: String) -> [String] {
        let chars = Array(str.uppercased())
        var result: [String] = []
        
        for i in 0..<chars.count - 1 {
            let a = chars[i]
            let b = chars[i+1]
            if a.isLetter && b.isLetter {
                result.append(String([a, b]))
            }
        }
        return result
    }
    
    let m1 = makeMultiset(str1)
    let m2 = makeMultiset(str2)

    // 원소별 카운트 딕셔너리
    let dict1 = Dictionary(grouping: m1, by: { $0 }).mapValues { $0.count }
    let dict2 = Dictionary(grouping: m2, by: { $0 }).mapValues { $0.count }
    
    // 교집합 (min)
    var intersection = 0
    // 합집합 (max)
    var union = 0
    
    let allKeys = Set(dict1.keys).union(dict2.keys)
    
    for key in allKeys {
        let c1 = dict1[key] ?? 0
        let c2 = dict2[key] ?? 0
        
        intersection += min(c1, c2)
        union += max(c1, c2)
    }
    
    // 모두 공집합이면 1 * 65536
    if union == 0 {
        return 65536
    }
    
    return Int(Double(intersection) / Double(union) * 65536)
}