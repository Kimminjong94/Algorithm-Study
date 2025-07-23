
var n = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<n {
    let input = Int(readLine()!)!
    arr.append(input)
}

var sum = 0

arr.sort(by: >)
arr.insert(0, at: 0)

for i in 0...n {
    if i % 3 != 0 {
        sum += arr[i]
    }
}

print(sum)