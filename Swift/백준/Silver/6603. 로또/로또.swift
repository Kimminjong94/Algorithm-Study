import Foundation

while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let k = input[0]
    if k == 0 { break }

    let S = Array(input[1...k])
    var result = [Int](repeating: 0, count: 6)

    func dfs(_ start: Int, _ depth: Int) {
        if depth == 6 {
            print(result.map { String($0) }.joined(separator: " "))
            return
        }

        for i in start..<k {
            result[depth] = S[i]
            dfs(i + 1, depth + 1)
        }
    }

    dfs(0, 0)
    print()
}