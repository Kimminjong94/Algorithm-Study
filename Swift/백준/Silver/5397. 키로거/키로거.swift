import Foundation

let T = Int(readLine()!)!


for _ in 0..<T {
    let input = readLine()!
    print(solution(input))
}


func solution(_ input: String) -> String {    
    var left = [Character]()
    var right = [Character]()
    
    for ch in input {
        switch ch {
            
        case "<":
            if !left.isEmpty {
                right.append(left.removeLast())
            }
        case ">":
            if !right.isEmpty {
                left.append(right.removeLast())
            }
            
        case "-":
            if !left.isEmpty {
                left.removeLast()
            }
            
        default:
            left.append(ch)
            
            
        }
        
    }
    
    return String(left + right.reversed())
}
