import Foundation

func solution(_ array:[Int]) -> [Int] {
    var changedValue: Int = 0
    var changedIndex: Int = 0

    for (index, value) in array.enumerated() {
        if value > changedValue {
            changedValue = value
            changedIndex = index
        }
    }
    return [changedValue, changedIndex]
}