import Foundation

let N = Int(readLine()!)!
var count = 0
var num = 666

func has666(_ num: Int) -> Bool {
    var n = num
    var streak = 0
    while n > 0 {
        if n % 10 == 6 {
            streak += 1
            if streak == 3 { return true }
        } else {
            streak = 0
        }
        n /= 10
    }
    return false
}

while true {
    if has666(num) {
        count += 1
        if count == N {
            print(num)
            break
        }
    }
    num += 1
}