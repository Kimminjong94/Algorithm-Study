import Foundation

let K = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }

var levels = Array(repeating: [Int](), count: K)

func build(_ start: Int, _ end: Int, _ depth: Int) {
    if start > end { return }
    
    let mid = (start + end) / 2
    levels[depth].append(arr[mid])
    
    build(start, mid - 1, depth + 1)
    build(mid + 1, end + 0, depth + 1)
}

build(0, arr.count - 1, 0)

for level in levels {
    print(level.map { String($0) }.joined(separator: " "))
}