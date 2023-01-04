import Foundation

func solution(_ order:Int) -> Int {
    
    let newOrder = String(order).map { $0 }
    let answer = newOrder.filter { $0 == "3" || $0 == "6" || $0 == "9" }
    
    return answer.count
}