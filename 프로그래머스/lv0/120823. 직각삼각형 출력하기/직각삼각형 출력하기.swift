import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }


for i in 1...n[0] {
    let repeatStr = String(repeating: "*", count: i)
    print(repeatStr)
}