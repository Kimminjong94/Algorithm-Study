let N = Int(readLine()!)!

func soultion(_ n: Int) -> Int {
     if n == 0 || n == 1 {
        return n
    }
    var arr = Array(repeating: 0, count: n + 1)
    
    arr[1] = 1
    
    for i in 2...n {
        arr[i] = arr[i - 1] + arr[i - 2]
    }  
    return arr[n]
}

print(soultion(N))