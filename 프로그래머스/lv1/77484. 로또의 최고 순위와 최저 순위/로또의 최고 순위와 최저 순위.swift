import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    guard lottos.sorted() != win_nums.sorted() else { return [1,1]}
    
    var sameValue = 0
    let zeroCount = lottos.filter{$0 == 0}.count

    for i in lottos {
        for j in win_nums {
            if i == j {
                sameValue += 1
            }
        }
    }
    
    return [changeValueToOrder(correctNum: sameValue + zeroCount), changeValueToOrder(correctNum: sameValue)]
}

func changeValueToOrder(correctNum: Int) -> Int {
    if correctNum == 6 {
        return 1
    } else if correctNum == 5 {
        return 2
    } else if correctNum == 4 {
        return 3
    } else if correctNum == 3 {
        return 4
    } else if correctNum == 2 {
        return 5
    } else {
        return 6
    }
}