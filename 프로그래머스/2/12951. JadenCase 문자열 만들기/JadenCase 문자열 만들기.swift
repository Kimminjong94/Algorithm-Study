func solution(_ s: String) -> String {
    var result = ""
    var isFirstChar = true
    
    for char in s {
        if char == " " {
            result.append(char)
            isFirstChar = true
        } else {
            if isFirstChar {
                result.append(char.uppercased())
            } else {
                result.append(char.lowercased())
            }
            isFirstChar = false
        }
    }
    
    return result
}
