import Foundation

while let input = readLine(), !input.isEmpty {
    let N = Int(input)!

    var remainder = 1 % N
    var length = 1
    
    while remainder != 0 {
        remainder = (remainder * 10 + 1) % N
        length += 1
    }
    
    print(length)
}