let mode = 1234567891
let l = Int(readLine()!)!
let array = readLine()!.map {Int($0.asciiValue!) - 96}
var answer = 0

func pow31(_ r: Int) -> Int {
    var answer = 1
    for _ in 0..<r {
        answer *= 31
        answer %= mode
    }
    
    return answer % mode
}

for i in 0..<l {
    answer += array[i] * pow31(i)
    answer %= mode
    
    
}

print(answer % mode)