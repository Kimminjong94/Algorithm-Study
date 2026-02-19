
import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = Int64(readLine()!)!
    print(solution(input))
}

func solution(_ num: Int64) -> Int64 {
    var n = num
    
    if n <= 2 { return 2 }
    
    if n % 2 == 0 {
        n += 1
    }
    
    while true {
        if isPrime(n) {
            return n
        }
        n += 2   // 홀수만 검사
    }
}

func isPrime(_ n: Int64) -> Bool {
    if n < 2 { return false }
    if n == 2 || n == 3 { return true }
    if n % 2 == 0 { return false }
    
    var i: Int64 = 3
    while i * i <= n {
        if n % i == 0 {
            return false
        }
        i += 2
    }
    return true
}