import Foundation

let n = Int(readLine()!)!
var order:[Int] = []
var count = 1

var answerArray:[String] = []

for _ in 0..<n {
    let input = Int(readLine()!)!
    
    while count <= input {
        order.append(count)
        answerArray.append("+")
        count += 1
    }
    
    if order.last == input {
        order.popLast()
        answerArray.append("-")
    } else {
        print("NO")
        exit(0)
    }
    
}



print(answerArray.joined(separator: "\n"))
