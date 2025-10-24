import Foundation

func cantor(_ n: Int) -> String {
    if n == 0 { return "-" }
    let prev = cantor(n - 1)
    return prev + String(repeating: " ", count: prev.count) + prev
}

// EOF까지 입력 받기
while let line = readLine(), let n = Int(line) {
    print(cantor(n))
}