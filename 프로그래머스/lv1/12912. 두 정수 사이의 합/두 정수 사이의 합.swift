func solution(_ a:Int, _ b:Int) -> Int64 {
    
    var numA = a
    var numB = b
    var answer: Int64 = 0
    
    if a == b {return Int64(a)}
    
    while numB != numA {
        if numA > numB {
            answer += Int64(numB)
            numB += 1

        } else if numB > numA {
            answer += Int64(numA)
            numA += 1

        }
    }

    return numA > numB ? answer + Int64(numB) : answer + Int64(numA)
}