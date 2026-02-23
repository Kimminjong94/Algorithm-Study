import Foundation

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map {Int($0)!}
let firstRing = arr[0]

for i in 1..<N {
    let gcd = gcd(firstRing, arr[i])
    print("\(firstRing/gcd)/\(arr[i]/gcd)")
}


func gcd(_ a: Int, _ b: Int) -> Int {
    var x = a
    var y = b
    
    while y != 0 {
        let tmp = x % y
        x = y
        y = tmp
    }
    return x
}