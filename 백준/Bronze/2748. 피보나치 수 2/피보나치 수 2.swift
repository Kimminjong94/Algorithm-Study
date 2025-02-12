let N = Int(readLine()!)!

func soultion(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return n
    }
    
    var prev = 0, curr = 1
    
    for _ in 2...n {
        let next = prev + curr
        prev = curr
        curr = next
    }
    
    
    
    return curr
}

print(soultion(N))