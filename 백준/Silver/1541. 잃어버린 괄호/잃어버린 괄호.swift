import Foundation

let minusSplit = readLine()!.split(separator:"-").map{String($0)}
let plus = minusSplit[0].split(separator:"+").map{Int(String($0))!}

var result = 0
for i in plus {
	result += i
}
var minusTotal = 0
for i in 1..<minusSplit.count {
	let minus = minusSplit[i].split(separator:"+").map{Int(String($0))!}
    
    for j in minus {
    	minusTotal += j
    }
}

print(result - minusTotal)