let line = readLine()!.map{String($0)}
var ans = 0
var stack = 0
var i = 0
while i < line.count {
    // 레이저인경우 
    if i<line.count-1, line[i] == "(", line[i+1] == ")" {
        ans += stack
        i += 2
    } else {
        if line[i] == ")" {
            ans += 1
            stack -= 1
        } else {
            stack += 1
        }
        i += 1
    }
}

print(ans)