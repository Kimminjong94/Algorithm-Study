import Foundation
func solution(_ s:String) -> Int {
    
    var newS = s.map{String($0)}
    var keepArr: [String] = []
    var first = ""
    var count = 0
    
    for i in 0..<newS.count {
        if keepArr.isEmpty {
            first = newS[i]
            keepArr.append(first)
        } else {
            keepArr.append(newS[i])
            if keepArr.filter{$0 == first}.count == keepArr.filter{$0 != first}.count {
                keepArr.removeAll()
                count += 1
            }
        }
        if i == newS.count - 1 {
            if keepArr.count > 0 {
                count += 1
            }
        }
    }
    
    
    
    return count
}