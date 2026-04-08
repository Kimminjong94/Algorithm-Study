import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let H = input[0]
let W = input[1]

for _ in 0..<H {
    let row = Array(readLine()!)
    var result = Array(repeating: -1, count: W)
    
    var lastCloud = -1
    
    for j in 0..<W {
        if row[j] == "c" {
            lastCloud = j
            result[j] = 0
        } else {
            if lastCloud != -1 {
                result[j] = j - lastCloud
            }
        }
    }
    
    print(result.map { String($0) }.joined(separator: " "))
}