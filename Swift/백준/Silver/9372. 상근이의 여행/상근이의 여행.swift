let T = Int(readLine()!)!
for _ in 0..<T {
    let NM = readLine()!.split(separator: " ").map {Int($0)!}
    let N = NM[0]
    let M = NM[1]

    for _ in 0..<M {
        _ = readLine()
    }
    print(N - 1)
}