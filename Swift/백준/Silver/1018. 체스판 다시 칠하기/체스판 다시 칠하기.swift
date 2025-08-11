let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

var board: [[Character]] = []
for _ in 0..<n {
    board.append(Array(readLine()!))
}

func repaintCount(startRow: Int, startCol: Int) -> Int {
    var whiteStart = 0 // 왼쪽 위가 W일 때 다시 칠하는 개수
    var blackStart = 0 // 왼쪽 위가 B일 때 다시 칠하는 개수
    
    for i in 0..<8 {
        for j in 0..<8 {
            let current = board[startRow + i][startCol + j]
            // (i + j)가 짝수면 시작 색, 홀수면 반대 색
            if (i + j) % 2 == 0 {
                if current != "W" { whiteStart += 1 }
                if current != "B" { blackStart += 1 }
            } else {
                if current != "B" { whiteStart += 1 }
                if current != "W" { blackStart += 1 }
            }
        }
    }
    
    return min(whiteStart, blackStart)
}

var minRepaint = Int.max

for i in 0...(n - 8) {
    for j in 0...(m - 8) {
        minRepaint = min(minRepaint, repaintCount(startRow: i, startCol: j))
    }
}

print(minRepaint)