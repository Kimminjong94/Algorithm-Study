let input = Int(readLine()!)!
var caseNum = 1

for _ in 0..<input {
    let number = readLine()!.split(separator: " ").map{Int($0)!}
    let a = number[0]
    let b = number[1]
    
    print("Case #\(caseNum): \(a+b)")
    caseNum += 1

}