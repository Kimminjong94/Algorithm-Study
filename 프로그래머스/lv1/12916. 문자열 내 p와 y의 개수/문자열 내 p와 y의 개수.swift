import Foundation

func solution(_ s:String) -> Bool
{
    var stringArray = s.map{ String($0).lowercased() }
    
    var containsP = 0
    var containsY = 0
    
        for i in stringArray {
        if i.contains("p") {
            containsP += 1
        } else if i.contains("y") {
            containsY += 1
        } else if !i.contains("p") && i.contains("y") {
            return false
        }
    }
    
    if containsP == containsY {
        return true
    } else {
        return false

    }
}