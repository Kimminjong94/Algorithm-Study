let num = Int(readLine()!)!

func calculate (num : Int) -> Int {
    if num == 0 {
        return 1
    }
    return num * calculate(num: num - 1)
}

print(calculate(num: num))