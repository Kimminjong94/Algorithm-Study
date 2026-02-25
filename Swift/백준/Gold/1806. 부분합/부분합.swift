import Foundation

let NS = readLine()!.split(separator: " ").map {Int($0)!}
let N = NS[0]
let S = NS[1]
let elements = readLine()!.split(separator: " ").map {Int($0)!}


var start = 0
var end = 0
var sum = 0
var minLength = Int.max

while true {
    
    if sum >= S {
        minLength = min(minLength, end - start)
        sum -= elements[start]
        start += 1
    }
    else if end == N {
        break
    }
    else {
        sum += elements[end]
        end += 1
    }
}
    
print(minLength == Int.max ? 0 : minLength)