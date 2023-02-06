import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    var newDenom1 = denom1
    var newDenom2 = denom2
    var newNum1 = numer1
    var newNum2 = numer2
    
    var denom1Count = 0
    var denom2Count = 0

    for i in 1...newDenom2 {
        if newDenom1 != newDenom2 {
            newDenom1 = denom1 * i
            denom1Count += 1
            newNum1 = numer1 * denom1Count
        }
    }
    
    for i in 1...newDenom1 {
        if newDenom2 != newDenom1 {
            newDenom2 = denom2 * i
            denom2Count += 1
            newNum2 = numer2 * denom2Count
        }
    }
    let divideNum = gcd(newDenom1, (newNum1 + newNum2))

    
    return [(newNum1 + newNum2) / divideNum, newDenom1 / divideNum]
}

/// 최대공약수
func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

