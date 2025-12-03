import Foundation

func solution(_ s: String) -> String {
    var result = ""
    var isStart = true

    for ch in s {
        if ch == " " {
            result.append(" ")
            isStart = true
        } else {
            if isStart {
                result.append(ch.uppercased())
                isStart = false
            } else {
                result.append(ch.lowercased())
            }
        }
    }

    return result
}