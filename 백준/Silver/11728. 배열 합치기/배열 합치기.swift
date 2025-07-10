let AB = readLine()!
var A: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
var B: [Int] = readLine()!.split(separator: " ").map{Int($0)!}

let answer = (A + B).sorted().map{String($0)}.joined(separator: " ")
print(answer)