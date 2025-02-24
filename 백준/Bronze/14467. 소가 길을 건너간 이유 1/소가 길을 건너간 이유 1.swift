let n = Int(readLine()!)!

var cowDic:[Int: Int] = [:]
var answer = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    if cowDic[input[0]] == nil {
        cowDic[input[0], default: -1] = input[1]

    } else if cowDic[input[0]] != input[1] {
        answer += 1
        cowDic[input[0], default: -1] = input[1]

    }
    
}

print(answer)