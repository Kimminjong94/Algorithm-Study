let N = Int(readLine()!)!
var points : [Int] = []

for _ in 0..<N {
    let point = Int(readLine()!)!
    points.append(point)
}

var newPoint = points.reversed().map{Int($0)}
var index = 0
var changedCount = 0

while index < N - 1 {
    
    let now = newPoint[index]
    let next = newPoint[index+1]
    
    if now <= next {
        newPoint[index + 1] = now - 1
        changedCount += next - (now - 1)
    }
    
    index += 1
}
print(changedCount)