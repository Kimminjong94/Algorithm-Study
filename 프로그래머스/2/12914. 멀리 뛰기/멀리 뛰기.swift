func solution(_ n:Int) -> Int64 {
    
    // 한칸씩은 무조건 갈 수 있으니깐 1부터 카운트 시작
   var result = [1, 2]
    var i = 0
    
    
    while result.count < n {
        result.append((result[i] + result[i + 1]) % 1234567)
        i += 1
    }
    
    return Int64(result[n-1])
    
}