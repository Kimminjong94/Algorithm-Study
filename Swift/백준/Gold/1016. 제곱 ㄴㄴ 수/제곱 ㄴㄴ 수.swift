import Foundation

let input = readLine()!.split(separator: " ").map { Int64($0)! }
let minVal = input[0]
let maxVal = input[1]

let size = Int(maxVal - minVal + 1)
var isSquareFree = Array(repeating: true, count: size)

let limit = Int64(Double(maxVal).squareRoot())

for k in 2...limit {
    let square = k * k
    
    // 구간 내 첫 배수
    var start = ((minVal + square - 1) / square) * square
    
    while start <= maxVal {
        isSquareFree[Int(start - minVal)] = false
        start += square
    }
}

let result = isSquareFree.filter { $0 }.count
print(result)