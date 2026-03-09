import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let length = input[1]
let maxWeight = input[2]

let trucks = readLine()!.split(separator: " ").map { Int($0)! }

var bridge = Array(repeating: 0, count: length)
var time = 0
var currentWeight = 0
var index = 0

while index < trucks.count {
    
    time += 1
    
    // 다리에서 트럭 나감
    currentWeight -= bridge.removeFirst()
    
    let nextTruck = trucks[index]
    
    if currentWeight + nextTruck <= maxWeight {
        bridge.append(nextTruck)
        currentWeight += nextTruck
        index += 1
    } else {
        bridge.append(0)
    }
}

time += length

print(time)