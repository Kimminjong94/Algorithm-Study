import Foundation

let N = Int(readLine()!)!
var level = [Int]()
var sum = 0

for _ in 0..<N {
    level.append(Int(readLine()!)!)
}

// 배열의 뒤부터 검사하는데, 맨 뒤 요소만 빼고!
for i in (0..<level.count-1).reversed() {
    if level[i+1] <= level[i] { // 뒷 요소가 현재 요소보다 작거나 같을 경우
        sum += (level[i]-level[i+1]+1) // 뒷 요소와 현재 요소의 수 차이에 1을 더한만큼 sum에 누적
        level[i] = level[i+1]-1 // 현재 요소 갱신
    }
}

print(sum)