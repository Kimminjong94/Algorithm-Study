import Foundation

let K = Int(readLine()!)!

for i in 1...K {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let scores = Array(input[1...])
    
    let maxScore = scores.max()!
    let minScore = scores.min()!
    
    let sorted = scores.sorted(by: >)
    
    var largestGap = 0
    for j in 0..<sorted.count - 1 {
        let gap = sorted[j] - sorted[j + 1]
        largestGap = max(largestGap, gap)
    }
    
    print("Class \(i)")
    print("Max \(maxScore), Min \(minScore), Largest gap \(largestGap)")
}