import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = input[0]
    let y1 = input[1]
    let r1 = input[2]
    let x2 = input[3]
    let y2 = input[4]
    let r2 = input[5]

    let dx = x1 - x2
    let dy = y1 - y2
    let d2 = dx*dx + dy*dy
    let sum = r1 + r2
    let diff = abs(r1 - r2)

    if d2 == 0 && r1 == r2 {
        print(-1)
    } else if d2 > sum*sum {
        print(0)
    } else if d2 < diff*diff {
        print(0)
    } else if d2 == sum*sum || d2 == diff*diff {
        print(1)
    } else {
        print(2)
    }
}