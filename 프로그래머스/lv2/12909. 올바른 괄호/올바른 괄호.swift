import Foundation
func solution(_ s: String) -> Bool {
    var openCount = 0 
    
    for char in s {
        if char == "(" {
            openCount += 1
        } else if char == ")" {
            openCount -= 1
        }
        
        if openCount < 0 {
            return false 
        }
    }
    
    return openCount == 0 
}