import Foundation

func solution(_ p: String) -> String {
    if p.isEmpty { return "" }

    let (u, v) = splitBalanced(p)

    if isCorrect(u) {
        return u + solution(v)
    } else {
        var result = "("
        result += solution(v)
        result += ")"
        result += reverseParentheses(String(u.dropFirst().dropLast()))
        return result
    }
}

func splitBalanced(_ s: String) -> (String, String) {
    var count = 0
    var index = s.startIndex

    for (i, char) in s.enumerated() {
        if char == "(" {
            count += 1
        } else {
            count -= 1
        }
        if count == 0 {
            index = s.index(s.startIndex, offsetBy: i + 1)
            break
        }
    }

    let u = String(s[..<index])
    let v = String(s[index...])
    return (u, v)
}

// 올바른 괄호 문자열인지 검사
func isCorrect(_ s: String) -> Bool {
    var stack = [Character]()
    for c in s {
        if c == "(" {
            stack.append(c)
        } else {
            if stack.isEmpty { return false }
            stack.removeLast()
        }
    }
    return stack.isEmpty
}

func reverseParentheses(_ s: String) -> String {
    return s.map { $0 == "(" ? ")" : "(" }.joined()
}

