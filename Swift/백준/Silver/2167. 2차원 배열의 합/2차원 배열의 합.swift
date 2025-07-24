let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

var arr = [[Int]]()
for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { Int($0)! })
}

// 1-based index 누적합 배열 만들기 (n+1) x (m+1)
var prefix = Array(repeating: Array(repeating: 0, count: m + 1), count: n + 1)

for i in 1...n {
    for j in 1...m {
        prefix[i][j] = arr[i-1][j-1]
                    + prefix[i-1][j]
                    + prefix[i][j-1]
                    - prefix[i-1][j-1]
    }
}

let k = Int(readLine()!)!
for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let (i, j, x, y) = (input[0], input[1], input[2], input[3])
    
    let sum = prefix[x][y]
            - prefix[i-1][y]
            - prefix[x][j-1]
            + prefix[i-1][j-1]
    
    print(sum)
}