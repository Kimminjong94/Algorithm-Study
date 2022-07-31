import Foundation

var poly = readLine()!

poly = poly.replacingOccurrences(of: "XXXX", with: "AAAA")
poly = poly.replacingOccurrences(of: "XX", with: "BB")

print(poly.contains("X") ? "-1" : poly)