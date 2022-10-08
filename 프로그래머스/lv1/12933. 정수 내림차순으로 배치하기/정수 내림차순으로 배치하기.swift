func solution(_ n:Int64) -> Int64 {
    
    let array = String(n).map{String($0)}.sorted(by: >)
    var answer = String()

    
    for i in 0..<array.count {
        answer += array[i]
    }
        
    return Int64(answer)!
}