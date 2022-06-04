var inputNumbers: [Int] = []
var counts: [Int] = []

for _ in 1...3 {
    inputNumbers.append(Int(readLine()!)!)
}

let multiplied = inputNumbers.reduce(1, *)
let splittedByDigit = String(describing: multiplied).compactMap { Int(String($0)) }

for i in 0...9 {
    let counted = splittedByDigit.filter { $0 == i }.count
    counts.append(counted)
}

counts.forEach { print($0) }