import Foundation

let AP = readLine()!.split(separator: " ").map{Int($0)!}
let A = AP[0]
let P = AP[1]


var nowNum = A
var answerArr:[Int] = []
var endArr = 0

while true {

    if answerArr.contains(nowNum) {
        endArr = nowNum
        break
    }
    answerArr.append(nowNum)

    let nowNumTOStr = Array(String(nowNum)).map{Int(String($0))!}.map{pow(Double($0), Double(P))}.reduce(0, +)
    nowNum = Int(nowNumTOStr)
    
}

var answer = 0

for i in 0..<answerArr.count {
    
    if answerArr[i] == endArr {
        break
    }
    
    answer += 1
}

print(answer)
