import Foundation

func solution(_ citations: [Int]) -> Int {
    let sorted = citations.sorted(by: >)
    for (i, cite) in sorted.enumerated() {
        if i >= cite {
            return i
        }
    }
    return citations.count
}