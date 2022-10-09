func solution(_ x:Int, _ n:Int) -> [Int64] {
    var intChanged = x
    var answer: [Int64] = []
    
    for i in 0..<n {
        answer.append(Int64(intChanged))
        intChanged += x
    }
    
    return answer
}