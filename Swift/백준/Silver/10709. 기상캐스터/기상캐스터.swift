let HW = readLine()!.split(separator: " ").map {Int($0)!}
let height = HW[0]
let width = HW[1]
var answerArray:[[Int]] = []

for _ in 0..<height {
    let input = Array(readLine()!)
    var arr = [Int]()
    
    for i in input {
        if i == "c" {
            arr.append(0)
        } else {
            arr.append(-1)
        }
    }
    answerArray.append(arr)
}

for i in 0..<answerArray.count {
    for j in 0..<answerArray[i].count - 1 {
        if answerArray[i][j] >= 0 && answerArray[i][j + 1] == -1 {
            answerArray[i][j + 1] = answerArray[i][j] + 1
        }
    }
}

for i in answerArray {
    print(i.map(String.init).joined(separator: " "))
}
