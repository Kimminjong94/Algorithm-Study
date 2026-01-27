import Foundation

let input = readLine()!.split(separator: " ").map { UInt64($0)! }

let a = input[0]
let b = input[1]

func gcd(_ x: UInt64, _ y: UInt64) -> UInt64 {
    var a = x
    var b = y
    while b != 0 {
        let r = a % b
        a = b
        b = r
    }
    return a
}

let g = gcd(a, b)
let lcm = (a / g) * b   // overflow 방지

print(lcm)