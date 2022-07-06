import Foundation

let input = readLine()!
let lineArr = input.components(separatedBy: " ")
let a = Int(lineArr[0])!
let b = Int(lineArr[1])!

print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a%b)