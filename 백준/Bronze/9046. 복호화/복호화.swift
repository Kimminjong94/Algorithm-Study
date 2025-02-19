let n = Int(readLine()!)!
var words:[[String]] = []

for _ in 0..<n {
    let input = readLine()!.map{String($0)}.filter{$0 != " "}
    words.append(input)
}

for word in words {
    var dic:[String : Int] = [:]
    
    for j in word {
        dic[j, default: 0] += 1
    }
    
    let maxValue = dic.values.max()!
    let maxKey = dic.filter{$0.value == maxValue}.map{$0.key}
    print(maxKey.count > 1 ? "?" : maxKey.first!)
    
}