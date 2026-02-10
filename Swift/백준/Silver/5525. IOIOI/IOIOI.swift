import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!
let S = Array(readLine()!)

var Pn:String = "I"
for _ in 0..<N {
    Pn.append("OI")
}

let checkCount = Pn.count
var count = 0

for i in 0...M - checkCount {
    let tmpArr = String(S[i..<i+checkCount])
    if tmpArr == Pn {
        count += 1
    }
}
print(count)
