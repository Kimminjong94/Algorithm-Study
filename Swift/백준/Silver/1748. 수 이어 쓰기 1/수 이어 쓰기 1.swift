let N = Int(readLine()!)!
var result = 0
var length = 1
var start = 1

while start * 10 <= N {
    let end = start * 10 - 1
    result += (end - start + 1) * length
    start *= 10
    length += 1
}

result += (N - start + 1) * length
print(result)