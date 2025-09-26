
let N = Int(readLine()!)!
let place = readLine()!.split(separator: " ").map {Int($0)!}
var result = Array(repeating: 0, count: N)

for i in 0..<N {
    var zeroCount = 0
    let left_greater_than_me_count = place[i]
    
    for j in 0..<result.count {
        if zeroCount == left_greater_than_me_count && result[j] == 0 {
            result[j] = i+1
            break
        }
        
        if result[j] == 0 {
            zeroCount += 1
        }
    }
}
print(result.map{String($0)}.joined(separator: " "))