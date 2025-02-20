let n = Int(readLine()!)!
var numbers = Set<String>()

for _ in 0..<n {
    let input = readLine()!
    numbers.insert(input)
}

let alphabetOrder = numbers.sorted {
    $0.count == $1.count ? $0 < $1 : $0.count < $1.count
}

for i in alphabetOrder {
    print(i)
}
