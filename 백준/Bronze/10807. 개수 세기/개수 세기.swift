let lin1 = readLine()
let line2 = readLine()!.split(separator: " ").map {Int($0)!}
let line3 = Int(readLine()!)!

var answer = 0
for i in line2 {
    if i == line3 {
        answer += 1
    }
}

print(answer)
