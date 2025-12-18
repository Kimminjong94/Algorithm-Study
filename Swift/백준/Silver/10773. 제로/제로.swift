import Foundation

let N = Int(readLine()!)!
var numbers = [Int]()


for _ in 0..<N {
    let num = Int(readLine()!)!
    numbers.append(num)
}

var answer:[Int] = [numbers[0]]


for i in 1..<numbers.count {
        
    if numbers[i] == 0 {
        answer.removeLast()
    } else {
        answer.append(numbers[i])
    }
    
}

print(answer.isEmpty ? 0 : answer.reduce(0, +))