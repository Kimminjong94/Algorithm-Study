let n = Int(readLine()!)!
var startTimes = [Int]()
var endTimes = [Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    startTimes.append(input[0])
    endTimes.append(input[1])
}

startTimes.sort()
endTimes.sort()

var startPointer = 0
var endPointer = 0
var currentRooms = 0
var maxRooms = 0

while startPointer < n {
    if startTimes[startPointer] < endTimes[endPointer] {
        currentRooms += 1
        maxRooms = max(maxRooms, currentRooms)
        startPointer += 1
    } else {
        currentRooms -= 1
        endPointer += 1
    }
}
print(maxRooms)