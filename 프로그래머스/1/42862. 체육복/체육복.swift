import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var newReserve = reserve.filter { !lost.contains($0) }.sorted()
    var newLost = lost.filter{ !reserve.contains($0) }.sorted()
    var answer = newLost.count
    
    for i in newLost.sorted() {
        if newReserve.contains(i - 1) {
            newReserve = newReserve.filter{$0 != i - 1}
            answer -= 1
        } else if newReserve.contains(i + 1) {
            newReserve = newReserve.filter{$0 != i + 1}
            answer -= 1
        }
    }
    
    return n - answer
}
