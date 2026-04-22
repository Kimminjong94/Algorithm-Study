import Foundation

func solution(_ s: String) -> String {
    var result = ""
    var isStart = true
    
    for char in s {
        if char == " " {
            result.append(char)
            isStart = true
        } else {
            if isStart {
                result.append(String(char).uppercased())
                isStart = false
            } else {
                result.append(String(char).lowercased())
            }
        }
    }
    
    return result
}