import Foundation

let info = readLine()!.split(separator: " ").map({Int(String($0))!})
var use = readLine()!.split(separator: " ").map({Int(String($0))!}) // 사용 순서 대기열
var multitap = Array(repeating: 0, count: info[0]) // 구 개수만큼 0으로 채운 멀티탭 배열
var answer = 0

use.reverse()

while use.count > 0 {
    // 멀티탭에 빈 공간이 있을 경우
    if multitap.contains(0) {
        if multitap.contains(use.last!) { use.removeLast() }
        else { multitap[multitap.firstIndex(of: 0)!] = use.removeLast() }
    }
    // 멀티탭에 빈 공간 없을 경우
    else {
        if multitap.contains(use.last!) { use.removeLast() }
        else {
            var min = use.count
            var check = 0
            for j in multitap {
                if !use.contains(j) { check = j; break }
                else if use.lastIndex(of: j)! < min { min = use.lastIndex(of: j)! }
            }
            if min == use.count { multitap[0] = use.removeLast() }
            else if check != 0 { multitap[multitap.firstIndex(of: check)!] = use.removeLast() }
            else { multitap[multitap.firstIndex(of: use[min])!] = use.removeLast() }
            answer += 1
        }
    }
}

print(answer)