let input = Int(readLine()!)!
var answer = 0
var newN = input

repeat {
    answer += 1
    newN = addDigit(num: newN)
} while (newN != input)


func addDigit(num: Int) -> Int {
    let newTen = num / 10
    let newOne = num % 10
    let newNum = (newTen + newOne) % 10
    return newOne * 10 + newNum
}

print(answer)