import Foundation


func solution(_ s:String) -> Int {
    var count = 0
    var doubleS = Array(s + s)
    
    for i in 0..<s.count {
        let needCheckArr = doubleS[i..<s.count + i].map{String($0)}
        
        if checkFull(needCheckArr) {
            count += 1
        }
    }
    
    return count
}

func checkFull(_ arr: [String]) -> Bool {
    guard arr[0] != "]" && arr[0] != ")" && arr[0] != "}" else {
        return false
    }
    
    var perfectSet = ["[]", "()", "{}"]
    var stack:[String] = []
        
    for i in arr {
        stack.append(i)
        
        if perfectSet.contains(stack.suffix(2).joined()) {

            stack.removeLast(2)
        }
    }

    return stack.isEmpty ? true : false
}