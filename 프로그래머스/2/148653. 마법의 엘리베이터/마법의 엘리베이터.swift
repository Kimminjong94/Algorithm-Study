import Foundation

func solution(_ storey: Int) -> Int {
    var storey = storey
    var count = 0
    
    while storey > 0 {
        let digit = storey % 10
        if digit > 5 {
            count += 10 - digit
            storey += 10 - digit
        } else if digit < 5 {
            count += digit
        } else { // digit == 5
            // 다음 자리수가 5 이상이면 올려버리고, 아니면 내려
            if (storey / 10) % 10 >= 5 {
                count += 5
                storey += 5
            } else {
                count += 5
            }
        }
        storey /= 10
    }
    return count
}