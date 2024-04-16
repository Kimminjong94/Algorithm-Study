let inputInt = Int(readLine()!)!

var dic: [String: Bool] = [:]



for _ in 0..<inputInt {
    let arrayString = readLine()!.split(separator: " ").map {String($0)}
    if arrayString[1] == "enter" {
        dic[arrayString[0]] = true
    } else {
        dic[arrayString[0]] = nil
    }
}

dic.keys.sorted(by: >).forEach {
    print($0)
}