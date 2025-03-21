let f = Array(readLine()!)
let s = Array(readLine()!)
var lcs = Array(repeating: Array(repeating: 0, count: s.count + 1), count: f.count + 1)


for i in 1...f.count {
    for j in 1...s.count {
        if f[i - 1] == s[j - 1] {
            lcs[i][j] = lcs[i - 1][j - 1] + 1
        } else {
            lcs[i][j] = max(lcs[i-1][j], lcs[i][j-1])
        }
    }
}

print(lcs[f.count][s.count])