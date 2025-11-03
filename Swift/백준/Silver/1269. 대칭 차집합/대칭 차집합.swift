import Foundation

// 첫 번째 줄: A와 B의 원소 개수
let counts = readLine()!.split(separator: " ").map { Int($0)! }
let (aCount, bCount) = (counts[0], counts[1])

// 두 번째 줄: 집합 A
let setA = Set(readLine()!.split(separator: " ").map { Int($0)! })

// 세 번째 줄: 집합 B
let setB = Set(readLine()!.split(separator: " ").map { Int($0)! })

// 교집합 개수 계산
let intersectionCount = setA.intersection(setB).count

// 대칭 차집합의 원소 개수 = A개수 + B개수 - 2 * 교집합개수
let result = setA.count + setB.count - 2 * intersectionCount

print(result)