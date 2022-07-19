let n = readLine()!.split(separator: " ").map{Int($0)!}
var leaks = readLine()!.split(separator: " ").map{Int($0)!}
leaks.sort()

var used = 0
var current = 0
var tape = 0
for leak in leaks {
    if tape < leak - current {
        used += 1
        tape = n[1] - 1 // 테이프를 새로 끊음
    } else {
        tape -= leak - current
    }
    current = leak
}

print(used)