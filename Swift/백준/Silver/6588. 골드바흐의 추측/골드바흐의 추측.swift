var isGoldBach = false
//에라토스테네스의 체
var aa = Array(repeating: 0, count: 1000001)
for i in 2...1000000{
    aa[i] = i
}
for i in 2...1000000{
    if aa[i] == 0{continue}
    for j in stride(from: i + i, through: 1000000, by: i){
        aa[j] = 0
    }
}

while true{
    let n = Int(String(readLine()!))!
    if n == 0{
        break
    }
    for i in 3..<((n / 2)+1){
        if i % 2 == 1 && aa[i] != 0 && aa[n - i] != 0 {
            print("\(n) = \(i) + \(n - i)")
            isGoldBach = true
            break
        }
    }
    if !isGoldBach{
        print("Goldbach's conjecture is wrong.")
    }
    isGoldBach = false
}