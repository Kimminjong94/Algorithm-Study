import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let N = nm[0], M = nm[1]

let rcdir = readLine()!.split(separator: " ").map { Int($0)! }
var r = rcdir[0], c = rcdir[1], d = rcdir[2]

var room = [[Int]]()
for _ in 0..<N {
    room.append(readLine()!.split(separator: " ").map { Int($0)! })
}

// 방향: 0=북, 1=동, 2=남, 3=서
let dr = [-1, 0, 1, 0]
let dc = [0, 1, 0, -1]

var cleanedCount = 0

while true {
    // 1. 현재 칸 청소
    if room[r][c] == 0 {
        room[r][c] = 2 // 청소 표시
        cleanedCount += 1
    }
    
    var foundUncleaned = false
    
    // 2. 주변 4칸 확인
    for _ in 0..<4 {
        d = (d + 3) % 4 // 반시계 회전
        let nr = r + dr[d]
        let nc = c + dc[d]
        
        if room[nr][nc] == 0 { // 청소되지 않은 칸
            r = nr
            c = nc
            foundUncleaned = true
            break
        }
    }
    
    if foundUncleaned {
        continue
    }
    
    // 3. 후진
    let backDir = (d + 2) % 4
    let br = r + dr[backDir]
    let bc = c + dc[backDir]
    
    if room[br][bc] == 1 { // 뒤가 벽이면 멈춤
        break
    } else {
        r = br
        c = bc
    }
}

print(cleanedCount)