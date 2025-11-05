import Foundation

let n = Int(readLine()!)!
var members: [(age: Int, name: String)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let age = Int(input[0])!
    let name = String(input[1])
    members.append((age, name))
}

// Swift의 sort는 안정 정렬(stable sort)이므로 입력 순서가 유지됨
let sortedMembers = members.sorted { $0.age < $1.age }

for member in sortedMembers {
    print("\(member.age) \(member.name)")
}