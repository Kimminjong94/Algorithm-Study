import Foundation

let N = Int(readLine()!)!
var queue = readLine()!.split(separator: " ").map { Int($0)! }

var stack: [Int] = []
var order = 1

while !queue.isEmpty {
    if queue.first! == order {
        queue.removeFirst()
        order += 1
    } else if let last = stack.last, last == order {
        stack.removeLast()
        order += 1
    } else {
        stack.append(queue.removeFirst())
    }
}

while let last = stack.last, last == order {
    stack.removeLast()
    order += 1
}

if order == N + 1 {
    print("Nice")
} else {
    print("Sad")
}