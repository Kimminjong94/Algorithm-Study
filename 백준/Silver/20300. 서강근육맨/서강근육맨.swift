let N = Int(readLine()!)!
let loss = readLine()!.split(separator: " ").map {Int($0)!}.sorted(by: >)
var maxLoss = loss.count % 2 == 0 ? loss[0] + loss.last! : loss[0]

for i in 1...loss.count / 2 {
    let start = loss[i]
    let oddEnd = loss.count % 2 == 0 ? loss.count - i - 1 : loss.count - i
    let end = loss[oddEnd]
    
    if start + end > maxLoss {
        maxLoss = start + end
    }
    
}
print(maxLoss)