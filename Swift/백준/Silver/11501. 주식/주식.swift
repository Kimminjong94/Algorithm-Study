let T = Int(readLine()!)!

for _ in 0..<T {
    let days = Int(readLine()!)!
    let prices = readLine()!.split(separator: " ").map{Int($0)!}
    
    print(getMaxProfit(days, prices))
}

func getMaxProfit(_ days: Int, _ prices: [Int]) -> UInt64 {
    var maxPrice = prices[days - 1]
    var profit: UInt64 = 0
    
    for i in stride(from: days - 2, through: 0, by: -1) {
        
        if prices[i] > maxPrice {
            maxPrice = prices[i]
        } else {
            profit += UInt64(maxPrice - prices[i])
        }
    }
    
    return profit
}