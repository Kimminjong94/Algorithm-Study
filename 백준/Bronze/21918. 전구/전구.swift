import Foundation

// 입력 받기
let nm = readLine()!.split(separator: " ").map { Int($0)! }
let N = nm[0]
let M = nm[1]

// 초기 전구 상태
var bulbs = readLine()!.split(separator: " ").map { Int($0)! }

// 명령어 처리
for _ in 0..<M {
    let cmd = readLine()!.split(separator: " ").map { Int($0)! }
    let a = cmd[0]
    let b = cmd[1]
    let c = cmd[2]
    
    switch a {
    case 1: // i번째 전구를 x로 변경
        bulbs[b-1] = c
    case 2: // l ~ r 전구 상태 반전
        for i in (b-1)...(c-1) {
            bulbs[i] = bulbs[i] == 0 ? 1 : 0
        }
    case 3: // l ~ r 전구 끄기
        for i in (b-1)...(c-1) {
            bulbs[i] = 0
        }
    case 4: // l ~ r 전구 켜기
        for i in (b-1)...(c-1) {
            bulbs[i] = 1
        }
    default:
        break
    }
}

// 결과 출력
print(bulbs.map { String($0) }.joined(separator: " "))