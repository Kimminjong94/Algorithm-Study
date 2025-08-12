import Foundation

let N = Int(readLine()!)!
var paper = [[Int]]()

for _ in 0..<N {
    paper.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var whiteCount = 0
var blueCount = 0

func divide(x: Int, y: Int, size: Int) {
    let firstColor = paper[x][y]
    var same = true
    
    for i in x..<x+size {
        for j in y..<y+size {
            if paper[i][j] != firstColor {
                same = false
                break
            }
        }
        if !same { break }
    }
    
    if same {
        if firstColor == 0 {
            whiteCount += 1
        } else {
            blueCount += 1
        }
        return
    }
    
    let half = size / 2
    divide(x: x, y: y, size: half) // 왼쪽 위
    divide(x: x, y: y + half, size: half) // 오른쪽 위
    divide(x: x + half, y: y, size: half) // 왼쪽 아래
    divide(x: x + half, y: y + half, size: half) // 오른쪽 아래
}

divide(x: 0, y: 0, size: N)

print(whiteCount)
print(blueCount)