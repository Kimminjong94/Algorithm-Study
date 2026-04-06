let T = Int(readLine()!)!

for _ in 0..<T {
    let N = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map { Int($0)! }
    
    arr.sort()
    
    var answer = 0
    
    for i in 2..<N {
        answer = max(answer, arr[i] - arr[i-2])
    }
    
    print(answer)
}