import Foundation

let N = Int(readLine()!)!
var board = Array(
    repeating: Array(repeating: 0, count: N),
    count: N
)

let K = Int(readLine()!)!

for _ in 0..<K {
    let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
    board[input[0]][input[1]] = 1
}

let L = Int(readLine()!)!
var directionChange = [Int: String]()

for _ in 0..<L {
    let input = readLine()!.split(separator: " ")
    directionChange[Int(input[0])!] = String(input[1])
}

// 오른쪽 ↓ 왼쪽 ↑
let dx = [0, 1, 0, -1]
let dy = [1, 0, -1, 0]

var dir = 0
var time = 0

var snake: [(Int, Int)] = [(0, 0)]
board[0][0] = 2

while true {

    time += 1

    let head = snake.last!
    let nx = head.0 + dx[dir]
    let ny = head.1 + dy[dir]

    // 벽 충돌
    if nx < 0 || ny < 0 || nx >= N || ny >= N {
        break
    }

    // 자기 몸 충돌
    if board[nx][ny] == 2 {
        break
    }

    // 이동
    if board[nx][ny] == 1 {
        // 사과 있음 → 길이 증가
        board[nx][ny] = 2
        snake.append((nx, ny))
    } else {
        // 사과 없음 → 꼬리 제거
        board[nx][ny] = 2
        snake.append((nx, ny))

        let tail = snake.removeFirst()
        board[tail.0][tail.1] = 0
    }

    // 방향 변경
    if let command = directionChange[time] {
        if command == "D" {
            dir = (dir + 1) % 4
        } else {
            dir = (dir + 3) % 4
        }
    }
}

print(time)