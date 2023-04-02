import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {

    var newLost = Array(Set(lost).subtracting(Set(reserve))).sorted()
    var newReserve = Array(Set(reserve).subtracting(Set(lost))).sorted()
        
    for (lostIndex, lostValue) in newLost.enumerated() {
        for (reserveIndex, reserveValue) in newReserve.enumerated() {
            if lostValue - 1 == reserveValue {
                newLost[lostIndex] = 0
                newReserve[reserveIndex] = 0
                break
            } else if lostValue + 1 == reserveValue {
                newLost[lostIndex] = 0
                newReserve[reserveIndex] = 0
                break
            }
        }
    }
    return n - newLost.filter{$0 != 0}.count
}