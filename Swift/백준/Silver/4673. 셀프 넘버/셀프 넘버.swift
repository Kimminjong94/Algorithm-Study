var numArr = Array(repeating: false, count: 10001)

for i in 1..<numArr.count {
    
    let divideNum = Array(String(i)).map{Int(String($0))!}.reduce(0, +)
    let sumNum = i + divideNum
    if sumNum <= 10000 {
        numArr[sumNum] = true
    }

}


for i in 1..<numArr.count {
    if !numArr[i] {
        print(i)
    }
}
