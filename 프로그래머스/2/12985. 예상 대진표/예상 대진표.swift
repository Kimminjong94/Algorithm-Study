import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var round = 1
    var playerA = a
    var playerB = b

    while true {
       
        playerA = (playerA + 1) / 2
        playerB = (playerB + 1) / 2

        if playerA == playerB {
            break
        }

        round += 1
    }

    return round
}