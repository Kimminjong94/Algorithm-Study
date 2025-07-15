let NK = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NK[0]
let k = NK[1]
let numbers = readLine()!.split(separator: " ").map{ Int($0)! }

var countDict = [Int: Int]()
var left = 0
var maxLength = 0


for right in 0..<n {
    let num = numbers[right]
    countDict[num, default: 0] += 1
    
    while countDict[num]! > k {
        let leftNum = numbers[left]
        countDict[leftNum]! -= 1
        left += 1
    }
    
    maxLength = max(maxLength, right - left + 1)
}


print(maxLength)