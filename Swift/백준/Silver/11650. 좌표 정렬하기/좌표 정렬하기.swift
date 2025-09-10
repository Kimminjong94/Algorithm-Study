import Foundation

// 점의 개수 입력
let n = Int(readLine()!)!

// 점들을 저장할 배열
var points: [(x: Int, y: Int)] = []

// 점 입력
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    points.append((x: input[0], y: input[1]))
}

// 정렬: x좌표 오름차순, x가 같으면 y좌표 오름차순
points.sort {
    if $0.x == $1.x {
        return $0.y < $1.y
    } else {
        return $0.x < $1.x
    }
}

// 출력
for point in points {
    print("\(point.x) \(point.y)")
}