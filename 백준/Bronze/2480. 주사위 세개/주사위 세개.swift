let input = readLine()!.split(separator: " ").map{Int($0)!}
var prize:Int = 0
let largestNum = input.max()!

if Set(input).count == 1 {
    prize = 10000 + (input[0] * 1000)
} else if input[0] == input[1] {
    prize = 1000 + (input[0] * 100)
} else if input[1] == input[2] {
    prize = 1000 + (input[1] * 100)
} else if input[0] == input[2] {
    prize = 1000 + (input[0] * 100)

} else {
    prize = largestNum * 100
}

print("\(prize)")