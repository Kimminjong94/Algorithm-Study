import Foundation

var doc = readLine()!
let target = readLine()!
var index = doc.range(of: target)?.upperBound
var count = 0

while index != nil {
    count += 1
    doc = String(doc[index!...])
    index = doc.range(of: target)?.upperBound
}

print(count)