let leftCash = Int(readLine()!)!
let priceDays = readLine()!.split(separator: " ").map{Int($0)!}

func joonHyun(_ cash: Int) -> Int {
    var myStock: Int = 0
    var myMoney: Int = cash
    
    for priceDay in priceDays {
        myStock += myMoney / priceDay
        myMoney = myMoney % priceDay
    }
    return (myStock * priceDays.last!) + myMoney
}

func sungMin(_ cash: Int) -> Int {
    var myStock: Int = 0
    var myMoney: Int = cash
    
    var increaseDayCount = 0
    var decreaseDayCount = 0
    var comparePrice = priceDays.first!
    
    for i in 1..<priceDays.count {
        if priceDays[i] == comparePrice {
            continue
        }
        
        if priceDays[i] > comparePrice {
            comparePrice = priceDays[i]
            increaseDayCount += 1
            decreaseDayCount = 0
        } else if priceDays[i] < comparePrice {
            comparePrice = priceDays[i]
            decreaseDayCount += 1
            increaseDayCount = 0
        }
        
        if increaseDayCount >= 3 {
            myMoney += myStock * priceDays[i]
            myStock = 0

        } else if decreaseDayCount >= 3 {
            myStock += myMoney / priceDays[i]
            myMoney = myMoney % priceDays[i]
        }
    }
    return (myStock * priceDays.last!) + myMoney
}

func checkPrice() {
    if sungMin(leftCash) < joonHyun(leftCash) {
        print("BNP")
    } else if sungMin(leftCash) > joonHyun(leftCash) {
        print("TIMING")
    } else {
        print("SAMESAME")
    }
}

checkPrice()