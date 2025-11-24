import Foundation


func solution(_ orders:[String], _ course:[Int]) -> [String] {
    var result: [String] = []
    
    let sortedOrders = orders.map { String($0.sorted()) }
    
    var combinations: [Int: [String: Int]] = [:]
    
    // 조합 생성 함수
    func combine(_ arr: [Character], _ n: Int, _ start: Int, _ current: String) {
        if current.count == n {
            combinations[n, default: [:]][current, default: 0] += 1
            return
        }
        
        for i in start..<arr.count {
            combine(arr, n, i+1, current + String(arr[i]))
        }
    }
    
    // 모든 주문에서 course 길이별 조합 생성
    for order in sortedOrders {
        let arr = Array(order)
        for c in course {
            if arr.count >= c {
                combine(arr, c, 0, "")
            }
        }
    }
    
    for c in course {
        guard let dict = combinations[c] else { continue }
        
        let maxCount = dict.values.max() ?? 0
        
        if maxCount >= 2 {
            let candidates = dict.filter { $0.value == maxCount }.map { $0.key }
            result.append(contentsOf: candidates)
        }
    }
    
    return result.sorted()
}