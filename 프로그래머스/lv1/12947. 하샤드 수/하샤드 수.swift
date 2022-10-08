func solution(_ x:Int) -> Bool {
    
    var givenInt = x
    var intArr: [Int] = []
    
        
    intArr.append(givenInt%10)
    while givenInt >= 10 {
        givenInt = givenInt / 10
        intArr.insert(givenInt%10, at: 0)
        
    }
    
    let totalSum = intArr.reduce(0, +)
    
    if x % totalSum == 0 {
        
        return true
    } else {
        return false
        
    }
    
    
}