import Foundation

let N = Int(readLine()!)!


for _ in 0..<N {
    let input = readLine()!
    
    if checkIsPerfect(str: input) {
        print("YES")
    } else {
        print("NO")
    }
}


func checkIsPerfect(str: String) -> Bool {
    var arr = [Character]()

    for i in str {
        if i == "(" {
            arr.append(i)
        } else {
            if arr.isEmpty {
                return false
            }
            arr.removeLast()
        }
    }
    
    return arr.isEmpty
}