import Foundation


var tmp:[Int: Int] = [:]

for index in 1...8 {
    let input = Int(readLine()!)!
    tmp[index] = input
}

var newArr = tmp.sorted(by: {$0.value > $1.value})
newArr.removeLast(3)

let totalSum = newArr.reduce(0) { partialSum, element in
    return partialSum + element.value
}

let order = newArr.sorted(by: {$0.key < $1.key}).map{String($0.key)}.joined(separator: " ")


print(totalSum)
print(order)