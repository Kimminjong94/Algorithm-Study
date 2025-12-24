import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let ps = readLine()!
    var count = 0
    var isValid = true
    
    for ch in ps {
        if ch == "(" {
            count += 1
        } else {
            count -= 1
        }
        
        // 닫는 괄호가 먼저 나온 경우
        if count < 0 {
            isValid = false
            break
        }
    }
    
    // 모든 괄호를 처리한 후 '('가 남아 있으면 실패
    if count != 0 {
        isValid = false
    }
    
    print(isValid ? "YES" : "NO")
}