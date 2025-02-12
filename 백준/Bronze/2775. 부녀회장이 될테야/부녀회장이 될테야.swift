let T = Int(readLine()!)!


for _ in 0..<T {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    print(soultion(k, n))

}


func soultion(_ k: Int, _ n: Int) -> Int {
    var apartment = Array(repeating: Array(repeating: 0, count: 15), count: 15)

    
    for i in 1...14 {
        apartment[0][i] = i
    }
    
    
    for floor in 1...14 {
        for room in 1...14 {
            apartment[floor][room] = apartment[floor][room - 1] + apartment[floor - 1][room]
        }
    }
    return apartment[k][n]
    
}