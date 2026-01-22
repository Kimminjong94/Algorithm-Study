import Foundation

let T = Int(readLine()!)!

var dic:[String:Int] = [:]

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    if input[1] == "enter" {
        dic[input[0], default: 0] = 1
    } else if input[1] == "leave" {
        dic[input[0], default: 0] = 0
    }
}
let sortedDic = dic.sorted(by: {$0.key > $1.key})

for i in sortedDic {
    if i.value == 1 {
        print(i.key)
    }
}