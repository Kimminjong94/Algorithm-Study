var input = Int(readLine()!)!
var count = 0

for i in (0...input/5).reversed() {
    if (input-(5*i)) % 2 == 0 {
        count = i + (input-(5*i))/2
        break
    }
}
print(count == 0 ? -1 : count)