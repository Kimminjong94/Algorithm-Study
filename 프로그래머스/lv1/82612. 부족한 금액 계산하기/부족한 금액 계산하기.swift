func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var changedPrice: [Int] = []
    
    for i in 1...count {
        changedPrice.append(price * i)
    }

    
    return money > changedPrice.reduce(0, +) ? 0 : Int64(changedPrice.reduce(0, +) - money)
}