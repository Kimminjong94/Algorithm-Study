import Foundation

func solution(_ numbers:String) -> Int64 {
    
    var charNum = ""
    var answer: [Int] = []
    
    for i in numbers {
        charNum.append(i)
        
        switch charNum {
        case "zero":
            answer.append(0)
            charNum.removeAll()
        case "one":
            answer.append(1)
            charNum.removeAll()
        case "two":
            answer.append(2)
            charNum.removeAll()
        case "three":
            answer.append(3)
            charNum.removeAll()

        case "four":
            answer.append(4)
            charNum.removeAll()
            
        case "five":
            answer.append(5)
            charNum.removeAll()
        case "six":
            answer.append(6)
            charNum.removeAll()
        case "seven":
            answer.append(7)
            charNum.removeAll()
        case "eight":
            answer.append(8)
            charNum.removeAll()
        case "nine":
            answer.append(9)
            charNum.removeAll()
        default:
            print("not a num")
        }
    }
    return Int64(Int(answer.map{String($0)}.joined())!)
}