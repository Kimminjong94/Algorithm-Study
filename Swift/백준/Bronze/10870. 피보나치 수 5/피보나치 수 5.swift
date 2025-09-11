import Foundation

let n = Int(readLine()!)!

func fibonacci(_ n: Int) -> Int {
    if n == 0 { return 0 }
    if n == 1 { return 1 }
    
    var a = 0
    var b = 1
    
    for _ in 2...n {
        let temp = a + b
        a = b
        b = temp
    }
    
    return b
}

print(fibonacci(n))