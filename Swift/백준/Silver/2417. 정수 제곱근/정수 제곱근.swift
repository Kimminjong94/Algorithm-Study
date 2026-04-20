import Foundation

let n = UInt64(readLine()!)!

var left: UInt64 = 0
var right: UInt64 = 1 << 32

while left < right {
    let mid = (left + right) / 2
    
    if mid * mid >= n {
        right = mid
    } else {
        left = mid + 1
    }
}

print(left)