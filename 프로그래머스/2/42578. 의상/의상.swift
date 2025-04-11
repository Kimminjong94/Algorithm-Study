import Foundation

func solution(_ clothes: [[String]]) -> Int {
    var dict: [String: Int] = [:]
    
    for item in clothes {
        let type = item[1]
        dict[type, default: 0] += 1
    }
    
    let combinations = dict.values.map { $0 + 1 }.reduce(1, *)
    
    // 아무것도 안 입는 경우는 제외
    return combinations - 1
}