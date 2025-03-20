import Foundation

func solution(_ elements: [Int]) -> Int {
    let n = elements.count
    var resultSet = Set<Int>()
    let doubledElements = elements + elements
    
    for length in 1...n {
        var sum = doubledElements[0..<length].reduce(0, +)
        resultSet.insert(sum)
        
        for start in 1..<n {
            sum = sum - doubledElements[start - 1] + doubledElements[start + length - 1]
            resultSet.insert(sum)
        }
    }
    return resultSet.count
}