import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var p = priorities
    var l = location
    var result = 0
    
    while p.count > 0 {
        let max = p.max() ?? 0
        let pZero = p[0]
        l -= 1

        if max != pZero {
            p.append(pZero)
            p.removeFirst()

            if l < 0 {
                l = p.count - 1
            }
        } else {
            result += 1
            p.removeFirst()

            if l < 0 { break }
        }
    }
    return result
}
