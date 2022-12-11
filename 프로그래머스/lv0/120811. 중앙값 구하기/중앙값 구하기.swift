import Foundation

func solution(_ array:[Int]) -> Int {
    
    let sortedArray = array.sorted(by: <)

    return sortedArray[sortedArray.count / 2]
}