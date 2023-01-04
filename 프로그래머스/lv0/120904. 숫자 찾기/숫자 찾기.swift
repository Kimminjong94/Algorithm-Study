import Foundation

func solution(_ num:Int, _ k:Int) -> Int {

    let charArr = Array(String(num))
    let char = Character(String(k))
    
    if let answer = charArr.firstIndex(of: char) {
        return answer + 1
    } else {
        return -1
    }
}