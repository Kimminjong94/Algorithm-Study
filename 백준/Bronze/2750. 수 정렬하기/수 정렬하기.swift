let n = Int(readLine()!)!
var numbers:[Int] = []

for _ in 0..<n {
    let input = Int(readLine()!)!
    numbers.append(input)
}

for i in numbers.sorted() {
    print(i)
}