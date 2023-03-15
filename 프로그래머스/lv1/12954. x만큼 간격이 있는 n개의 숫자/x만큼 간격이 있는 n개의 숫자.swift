func solution(_ x:Int, _ n:Int) -> [Int64] {
    
    var answer = Array(repeating: x, count: n)
    
    for (index, value) in answer.enumerated(){
        answer[index] = (index + 1) * value
    }
    
    return answer.map{Int64($0)}
}