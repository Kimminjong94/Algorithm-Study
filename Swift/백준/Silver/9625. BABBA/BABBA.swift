
import Foundation

let K = Int(readLine()!)!

var a = 1
var b = 0

for _ in 0..<K {
    let nextA = b
    let nextB = a + b
    a = nextA
    b = nextB
}


print(a, b)