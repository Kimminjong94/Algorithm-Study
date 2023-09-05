import Foundation

func solution(_ n:Int) -> Int {
    
    for i in n+1...1000000 {
        
        if String(i, radix: 2).filter{$0 != "0"}.count == String(n, radix: 2).filter{$0 != "0"}.count {
            return i
        }
        
    }
    return 0
}