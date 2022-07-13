let input = Int(readLine()!)!
var stars = 1

for i in 1...input {
    for _ in 0..<i {
        print("*", terminator: "")
    }
    print()
}