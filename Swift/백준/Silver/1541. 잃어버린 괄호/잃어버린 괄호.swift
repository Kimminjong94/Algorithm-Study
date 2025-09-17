let N = Array(readLine()!)
var sum = 0
var tmpPlusArray: [String] = []
var tmpMinusArray: [String] = []
var nowMinusing: Bool = false

for i in N {
    if i == "-" && nowMinusing {
        sum -= Int(tmpMinusArray.joined(separator: ""))!
        tmpMinusArray = []
        continue
    } else if i == "-" {
        nowMinusing = true
        sum += Int(tmpPlusArray.joined(separator: ""))!
        tmpPlusArray = []
        continue
    } else if i == "+" && nowMinusing {
        sum -= Int(tmpMinusArray.joined(separator: ""))!
        tmpMinusArray = []
        continue
    } else if i == "+" {
        sum += Int(tmpPlusArray.joined(separator: ""))!
        tmpPlusArray = []
        continue
    }

    if nowMinusing {
        tmpMinusArray.append(String(i))
    } else {
        tmpPlusArray.append(String(i))
    }
}

if nowMinusing {
    sum -= Int(tmpMinusArray.joined(separator: ""))!
} else {
    sum += Int(tmpPlusArray.joined(separator: ""))!
}

print(sum)