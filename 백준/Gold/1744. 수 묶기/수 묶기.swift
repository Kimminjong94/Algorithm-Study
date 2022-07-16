import Foundation

let N = Int(readLine()!)!
var minus = [Int]()
var plus = [Int]()
var answer = 0

for _ in 0..<N {
    let input = Int(readLine()!)!
    if input <= 0 { minus.append(input) } // 음수
    else if input == 1 { answer += 1 } // 1일 경우 바로 answer에 누적
    else { plus.append(input) } // 양수
}

plus.sort(by: >)
minus.sort(by: <)

if minus.count % 2 == 1 { answer += minus.removeLast() }
if plus.count % 2 == 1 { answer += plus.removeLast() }

while minus.count > 0 || plus.count > 0 {
    if minus.count > 0 { answer += minus.removeLast() * minus.removeLast() }
    if plus.count > 0 { answer += plus.removeLast() * plus.removeLast() }
}

print(answer)