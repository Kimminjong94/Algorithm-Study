let N = Int(readLine()!)!
var arr:[Int] = []

for _ in 0..<N {
    let input = Int(readLine()!)!
    arr.append(input)
}

arr.sort(by: >)

var answer = 0

for i in 1...arr.count {
    if i % 3 != 0 {
        answer += arr[i - 1]
    }

}
print(answer)