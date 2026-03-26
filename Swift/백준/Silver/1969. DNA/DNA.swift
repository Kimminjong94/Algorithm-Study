import Foundation

let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
let M = NM[1]

var arr:[[String]] = []

for _ in 0..<N {
    let input = Array(readLine()!).map{String($0)}
    arr.append(input)
}


var answerChar = ""
var answerDis = 0

for index in 0..<M {
    
    var locationStr:[String] = []
    
    for eachLocation in 0..<N {
        locationStr.append(arr[eachLocation][index])
    }
    
    let charAndDis = findMost(locationStr)
    
    answerChar += charAndDis.0
    answerDis += charAndDis.1
    
    
}


func findMost(_ str:[String]) -> (String, Int) {
    
    var countDic: [String:Int] = [:]

    for i in str {
        countDic[i, default: 0] += 1
    }
    
    let sortedDic = countDic.sorted {
        if $0.value == $1.value {
            return $0.key < $1.key
        } else {
            return $0.value > $1.value
        }
    }
    
    let maxKey = sortedDic.first!.key
    let hammingDis = sortedDic.filter {$0.key != maxKey}.map{$0.value}.reduce(0, +)

    return (maxKey, hammingDis)
}

print(answerChar)
print(answerDis)