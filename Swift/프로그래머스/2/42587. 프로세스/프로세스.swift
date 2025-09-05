import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var queue = priorities.enumerated().map { ($0, $1) }
    var maxValue = priorities.max()!
    var count = 0
    
    while true {
        let firstElement = queue.removeFirst()

        if firstElement.1 == maxValue && firstElement.0 == location {
            count += 1
            return count
        } else if firstElement.1 == maxValue {
            maxValue = queue.max { a, b in
                a.1 < b.1 }!.1
            count += 1
        } else {
            queue.append(firstElement)
        }
    }
    return 0
}