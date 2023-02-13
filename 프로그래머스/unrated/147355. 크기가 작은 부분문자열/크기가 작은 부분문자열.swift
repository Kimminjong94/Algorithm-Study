import Foundation

func solution(_ t:String, _ p:String) -> Int {

    
    let newT = Array(t).map{String($0)}
    var startIndex = 0
    var endIndex = p.count
    var answer = 0

    for index in stride(from: startIndex, to: newT.count - (endIndex - 1), by: 1) {
        print(index, endIndex)

        
        if newT[index..<endIndex].reduce("", +) <= String(p) {
            answer += 1
        }

        print(newT[index..<endIndex].reduce("", +))
        endIndex += 1

    }
    
    return answer
}