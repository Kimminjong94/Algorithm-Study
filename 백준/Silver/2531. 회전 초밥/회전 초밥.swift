let N = readLine()!.split(separator: " ").map{ Int($0)! }
var belt:[Int] = []
let coupon = N[3]
let k = N[2]

var countDict = [Int: Int]()  // 초밥 종류별 개수
var kind = 0
var maxKind = 0

for _ in 0..<N[0] {
    let input = Int(readLine()!)!
    belt.append(input)
}


// 초기 윈도우 설정
for i in 0..<k {
    let sushi = belt[i]
    if countDict[sushi, default: 0] == 0 {
        kind += 1
    }
    countDict[sushi, default: 0] += 1
}

maxKind = countDict[coupon] == nil ? kind + 1 : kind

for i in 1..<N[0] {
    // 앞에서 제거
    let remove = belt[i - 1]
    countDict[remove]! -= 1
    if countDict[remove]! == 0 {
        countDict[remove] = nil
        kind -= 1
    }

    // 뒤에 추가 (원형이므로 % N)
    let add = belt[(i + k - 1) % N[0]]
    if countDict[add, default: 0] == 0 {
        kind += 1
    }
    countDict[add, default: 0] += 1

    // 쿠폰 초밥 포함 여부에 따른 최대값 갱신
    let currentMax = countDict[coupon] == nil ? kind + 1 : kind
    maxKind = max(maxKind, currentMax)
}


print(maxKind)