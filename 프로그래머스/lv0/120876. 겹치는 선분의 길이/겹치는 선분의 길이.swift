import Foundation

func solution(_ lines:[[Int]]) -> Int {

    let firstIndex = Array(lines[0][0]..<lines[0][1])
    let secondIndex = Array(lines[1][0]..<lines[1][1])
    let thirdIndex = Array(lines[2][0]..<lines[2][1])


    var checkList = Array(repeating: 0, count: 200)
    
    let array = (firstIndex + secondIndex + thirdIndex)
    array.forEach {
        if $0 < 1 {
            checkList[abs($0)] += 1

        } else {
            checkList[$0 + 100] += 1

        }
        
    }
    let answer = checkList.filter{$0 >= 2}.count
    
    print(checkList)


    return answer

}