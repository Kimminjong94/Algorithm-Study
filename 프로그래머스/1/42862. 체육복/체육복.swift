import Foundation
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var reserve = reserve.sorted()
    var lost = lost.sorted()
    var answer = n - lost.count
    
    for i in lost.sorted() {
        if reserve.contains(i) {
            reserve = reserve.filter{$0 != i}
            lost = lost.filter{$0 != i}
            answer += 1
        }
    }
    
    for i in lost.sorted() {        
        if reserve.contains(i - 1) {
            reserve = reserve.filter{$0 != i - 1}
            answer += 1
        } else if reserve.contains(i + 1) {
            reserve = reserve.filter{$0 != i + 1}
            answer += 1
        }
    }
    
    return answer
}
