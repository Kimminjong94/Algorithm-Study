let N = Int(readLine()!)!
let _ = Int(readLine()!)!
let S = Array(readLine()!)

var i = 0
var count = 0
var answer = 0

while i < S.count - 2 {
    if S[i] == "I" && S[i+1] == "O" && S[i+2] == "I" {
        count += 1
        if count >= N {
            answer += 1
        }
        i += 2
    } else {
        count = 0
        i += 1
    }
}

print(answer)
