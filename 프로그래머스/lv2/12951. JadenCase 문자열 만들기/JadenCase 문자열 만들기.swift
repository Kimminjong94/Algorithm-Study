
func solution(_ s:String) -> String {
    var answer = s.components(separatedBy: " ")
    for i in 0..<answer.count {
        if let firstChar = answer[i].first {
            let restOfChars = answer[i].dropFirst()
            answer[i] = String(firstChar).uppercased() + restOfChars.lowercased()
        }
    }
    
    return answer.joined(separator: " ")
}