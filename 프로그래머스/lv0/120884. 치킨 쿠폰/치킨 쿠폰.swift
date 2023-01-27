import Foundation

func solution(_ chicken:Int) -> Int {
    
    var coupon = chicken
    var orderedChicken = 0
    
    while coupon > 9 {
        orderedChicken += coupon / 10
        coupon = coupon / 10 + coupon % 10
    }
    return orderedChicken
}