import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var count = 1
    var dic: [String:Int] = [:]
    
    for cloth in clothes {
        dic[cloth[1], default: 0] += 1
    }
    
    print(dic)
    
    for i in dic.values {
        count *= (i + 1)
    }
    
    
    return count - 1
}