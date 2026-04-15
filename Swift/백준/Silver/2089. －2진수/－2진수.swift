import Foundation

let input = Int(readLine()!)!

var n = input
var result = ""

if n == 0 {
    print(0)
} else {
    while n != 0 {
        var remainder = n % -2
        n /= -2
        
        if remainder < 0 {
            remainder += 2
            n += 1
        }
        
        result = String(remainder) + result
    }
    
    print(result)
}