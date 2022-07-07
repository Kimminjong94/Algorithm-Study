import Foundation

var inputA = Int(readLine()!)!
var inputB = Int(readLine()!)!

var a: Int = (inputA*(inputB%10))
var b: Int = (inputA*((inputB%100)/10))
var c: Int = (inputA*(inputB/100))
var d: Int = (inputA*inputB)

print(a)
print(b)
print(c)
print(d)


