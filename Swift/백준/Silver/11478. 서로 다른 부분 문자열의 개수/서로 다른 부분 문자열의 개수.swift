import Foundation

let S = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
let n = S.count
let chars = Array(S)

// 1. 접미사 배열 생성
var suffixes: [String] = []
for i in 0..<n {
    suffixes.append(String(chars[i..<n]))
}

// 2. 사전순 정렬
suffixes.sort()

// 3. LCP (Longest Common Prefix) 계산
func lcp(_ a: String, _ b: String) -> Int {
    let ac = Array(a), bc = Array(b)
    var len = 0
    while len < ac.count && len < bc.count && ac[len] == bc[len] {
        len += 1
    }
    return len
}

// 4. 서로 다른 부분 문자열 개수 계산
var result = 0
for i in 0..<n {
    let total = suffixes[i].count
    let common = (i == 0) ? 0 : lcp(suffixes[i], suffixes[i - 1])
    result += total - common
}

print(result)