import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let a1 = firstLine[0]
let a0 = firstLine[1]

let c = Int(readLine()!)!
let n0 = Int(readLine()!)!

if a1 > c {
    print(0)
} else if a1 == c {
    print(a0 <= 0 ? 1 : 0)
} else {
    // a1 < c
    let left = a1 * n0 + a0
    let right = c * n0
    print(left <= right ? 1 : 0)
}