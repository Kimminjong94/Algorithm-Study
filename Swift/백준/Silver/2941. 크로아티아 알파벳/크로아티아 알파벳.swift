import Foundation

let N = readLine()!
let croaticString = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

var str = N

for ch in croaticString {
    
    str = str.replacingOccurrences(of: ch, with: "#")
    
    
}
print(str.count)