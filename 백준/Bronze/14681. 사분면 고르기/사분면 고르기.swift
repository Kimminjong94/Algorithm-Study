let a = Int(readLine()!)!
let b = Int(readLine()!)!


if a > 0 {
    if b > 0 {
        print("1")
    } else {
        print("4")
    }
} else {
    if b < 0 {
        print("3")
    } else {
        print("2")
    }
}