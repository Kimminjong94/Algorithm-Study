import Foundation

var dict = [String: Double]()

while true {
    guard let input = readLine(), !input.isEmpty else {
        break
    }
    dict[input, default: 0] += 1
}

let valueSum = dict.values.reduce(0, +)
let sortedDic = dict.sorted { $0.key < $1.key }
for (key, value) in sortedDic {
    let percent = (value / valueSum) * 100
    print("\(key) \(String(format: "%.4f", percent))")
}