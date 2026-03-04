import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var friends: [[Int]] = Array(repeating: [], count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    
    friends[input[0]].append(input[1])
    friends[input[1]].append(input[0])
}

if friends[1].isEmpty {
    print(0)
    exit(0)
}

var invitedFreinds: Set<Int> = []

for i in friends[1] {
    invitedFreinds.insert(i)
    
    for j in friends[i] {
        invitedFreinds.insert(j)
    }
}
invitedFreinds.remove(1)

print(invitedFreinds.count)

