import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var reSizeArray: [[Int]] = sizes.map{ $0.sorted(by: <) }
    let array1: [Int] = reSizeArray.flatMap {$0[0]}
    let array2: [Int] = reSizeArray.flatMap {$0[1]}
    
    return array1.max()! * array2.max()!
}