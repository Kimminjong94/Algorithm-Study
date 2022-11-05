import Foundation


func solution() -> Int {
    _ = Int(readLine()!)!
    let inputSecond = readLine()?.components(separatedBy: " ").map{Int($0)!}
    var max = 0
    let result = inputSecond!.sorted(by: >)
    
    for index in 0..<inputSecond!.count {
        let tempMax = result[index] + (index+1)
        if max < tempMax {
            max = tempMax
        }
    }
    return max + 1
}

print(solution())