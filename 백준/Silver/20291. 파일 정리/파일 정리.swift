let N = Int(readLine()!)!
var fileArray:[String:Int] = [:]

for _ in 0..<N {
    let input = readLine()!.split(separator: ".")[1]
    fileArray[String(input), default: 0] += 1

    
    
}

let answer = fileArray.sorted {$0.key < $1.key}

for i in answer {
    print("\(i.key) \(i.value)")
}
