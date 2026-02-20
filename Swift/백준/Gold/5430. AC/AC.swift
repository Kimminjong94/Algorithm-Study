import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let commands = readLine()!
    let n = Int(readLine()!)!
    let input = readLine()!

    var arr: [Int] = input == "[]" ? [] :
        input.dropFirst().dropLast().split(separator: ",").map { Int($0)! }

    var isReversed = false
    var front = 0
    var back = arr.count
    var isError = false

    for command in commands {
        if command == "R" {
            isReversed.toggle()
        } else { // D
            if front >= back {
                isError = true
                break
            }
            if isReversed {
                back -= 1
            } else {
                front += 1
            }
        }
    }

    if isError {
        print("error")
        continue
    }

    let result = arr[front..<back]
    let output = isReversed ? Array(result.reversed()) : Array(result)
    print("[\(output.map { String($0) }.joined(separator: ","))]")
}
