import Foundation

var n = readLine()!

n = n.replacingOccurrences(of: "XXXX", with: "AAAA")
n = n.replacingOccurrences(of: "XX", with: "BB")

print(n.contains("X") ? "-1" : n)