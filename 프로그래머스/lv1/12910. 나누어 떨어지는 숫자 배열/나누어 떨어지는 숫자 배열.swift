func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    var answerArr:[Int] = []
    
    for i in 0...arr.count - 1 {
        if arr[i] % divisor == 0 {
            answerArr.append(arr[i])
            
        }
    }
    if answerArr.isEmpty {
        return [-1]
    }
    return answerArr.sorted(by: <)
}
