let K = Int(readLine()!)!

var result = [Int]()

for _ in 0..<K {
    let input = Int(readLine()!)!
    
    if input == 0 {
        result.removeLast()
    } else {
        result.append(input)
    }
    
}

print(result.reduce(0, +))