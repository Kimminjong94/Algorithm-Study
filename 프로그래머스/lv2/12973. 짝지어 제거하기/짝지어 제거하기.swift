import Foundation

func solution(_ s:String) -> Int{
    var newS = Array(s)
    var stack:[Character] = []
    
    for i in 0..<newS.count {
        if !stack.isEmpty && stack.last == newS[i] {
            stack.removeLast()
        } else {
            stack.append(newS[i])
        }
    }
    return stack.isEmpty ? 1 : 0
}