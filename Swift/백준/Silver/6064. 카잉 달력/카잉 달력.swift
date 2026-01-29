import Foundation

let T = Int(readLine()!)!


func gcd(_ a: Int, _ b: Int) -> Int {
    b == 0 ? a : gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    a / gcd(a, b) * b
}



for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let M = input[0]
    let N = input[1]
    let x = input[2]
    let y = input[3]
    
    let limit = lcm(M, N)
    
    var k = x
    var found = false
    
    while k <= limit {
        let m = k % N == 0 ? N : k % N
        if m == y {
            print(k)
            found = true
            break
        }
        k += M
    }
    
    if !found {
        print(-1)
    }

}