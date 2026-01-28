import Foundation


let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]

var removedCount = 0
var isRemoved = Array(repeating: false, count: N + 1)

for i in 2...N {
    if isRemoved[i] { continue }

    var j = i
    while j <= N {
        if !isRemoved[j] {
            isRemoved[j] = true
            removedCount += 1

            if removedCount == K {
                print(j)
                exit(0)
            }
        }
        j += i
    }
}