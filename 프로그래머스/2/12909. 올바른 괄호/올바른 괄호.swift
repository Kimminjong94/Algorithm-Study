import Foundation

func solution(_ s: String) -> Bool {

    var stack:[String] = []
    
    for i in s {
        
        if stack.isEmpty && i == ")" {
            return false
        }
        
        if i == "(" {
            stack.append(String(i))
        } else {
            stack.popLast()!
        }
        
    }
    return stack.isEmpty ? true : false
}