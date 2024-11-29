import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var wantedList = Dictionary(uniqueKeysWithValues: zip(want, number))
    var currentList = [String: Int]()
    var answer = 0
    
    for i in 0..<discount.count {
        // 슬라이딩 윈도우에 새로 추가된 아이템
        let item = discount[i]
        currentList[item, default: 0] += 1
        
        // 슬라이딩 윈도우 범위에서 벗어난 아이템 제거
        if i >= 10 {
            let removeItem = discount[i - 10]
            if currentList[removeItem] == 1 {
                currentList.removeValue(forKey: removeItem)
            } else {
                currentList[removeItem, default: 0] -= 1
            }
        }
        
        // 10일 구간의 아이템이 원하는 리스트와 일치하는지 확인
        if i >= 9 && wantedList == currentList {
            answer += 1
        }
    }
    return answer
}