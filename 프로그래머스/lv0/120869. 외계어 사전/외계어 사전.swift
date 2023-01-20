import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    
    let orderedSpeell = spell.sorted(by: <)
    let orderedDic = dic.map{String($0).sorted(by: <)}
    
    for i in orderedDic {
        if orderedSpeell.joined() == String(i) {
            return 1
        }
    }
    return 2
}