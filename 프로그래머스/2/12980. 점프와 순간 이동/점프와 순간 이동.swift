import Foundation

func solution(_ n:Int) -> Int {
    var n = n
    var battery = 0

    while n != 0 {
        if n % 2 == 0 {
            n = n / 2
        } else {
            n -= 1
            battery += 1

        }

    }
    return battery
}