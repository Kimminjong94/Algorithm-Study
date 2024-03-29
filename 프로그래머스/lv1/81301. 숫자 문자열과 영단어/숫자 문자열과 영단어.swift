import Foundation

func solution(_ s:String) -> Int {

    let alphabetToNum = [
        "zero": "0",
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5",
        "six": "6",
        "seven": "7",
        "eight": "8",
        "nine": "9"

    ]
    var newS = s
    
    for i in alphabetToNum {
        newS = newS.replacingOccurrences(of: i.key, with: i.value)
        }
    
    return Int(newS)!
}