import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    
    var dict: [String:Int] = [:]
    for (index, value) in want.enumerated() {
        dict[value] = number[index]
    }
    var answer = 0
    
    
    for i in 0...discount.count - 10 {
 
        var checkDiscount = dict
        
        for j in i..<(i + 10) {
            
            let test = discount[j]
            
            if let check = checkDiscount[test] {
                checkDiscount[test]! -= 1
            }
            
            
            if !checkDiscount.map {$0.value <= 0}.contains(false) {
                answer += 1
            }
                    
        }

    }
    return answer
}