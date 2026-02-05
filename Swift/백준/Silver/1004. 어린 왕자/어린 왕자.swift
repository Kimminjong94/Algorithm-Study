import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let p = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = p[0], y1 = p[1], x2 = p[2], y2 = p[3]

    let n = Int(readLine()!)!
    var answer = 0

    for _ in 0..<n {
        let c = readLine()!.split(separator: " ").map { Int($0)! }
        let cx = c[0], cy = c[1], r = c[2]

        let d1 = (x1 - cx) * (x1 - cx) + (y1 - cy) * (y1 - cy)
        let d2 = (x2 - cx) * (x2 - cx) + (y2 - cy) * (y2 - cy)
        let r2 = r * r

        let startInside = d1 < r2
        let endInside = d2 < r2

        if startInside != endInside {
            answer += 1
        }
    }

    print(answer)
}