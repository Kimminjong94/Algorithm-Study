import Foundation

func solution(_ arrayA:[Int], _ arrayB:[Int]) -> Int {
    func gcd(_ a: Int, _ b: Int) -> Int {
        var a = a, b = b
        while b != 0 {
            let r = a % b
            a = b
            b = r
        }
        return a
    }
    
    func getGCD(_ arr: [Int]) -> Int {
        return arr.reduce(arr[0]) { gcd($0, $1) }
    }
    
    let aGCD = getGCD(arrayA)
    let bGCD = getGCD(arrayB)
    
    var result = 0
    
    if arrayB.allSatisfy({ $0 % aGCD != 0 }) {
        result = max(result, aGCD)
    }
    
    if arrayA.allSatisfy({ $0 % bGCD != 0 }) {
        result = max(result, bGCD)
    }
    
    return result
}