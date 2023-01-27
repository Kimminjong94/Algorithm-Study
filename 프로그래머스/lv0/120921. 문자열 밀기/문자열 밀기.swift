import Foundation

func solution(_ A:String, _ B:String) -> Int {
    
    guard A != B else {return 0}
    
    var newA = A
    var count = 0
    
    for i in 0..<A.count {
        if newA != B {
            newA.insert(newA.last!, at: newA.startIndex)
            newA.removeLast()
            count += 1
        } else if newA == B {
            return count
        }
    }
    return -1
}