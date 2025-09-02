let N = Int(readLine()!)!
var count = 0

for _ in 0..<N {
    let input = readLine()!

    if checkIsGoodWord(input) {
        count += 1
    }

}



func checkIsGoodWord(_ input: String) -> Bool {
    let arr = Array(input)
    var queue:[Character] = []
    
    for i in 0..<arr.count {
        if queue.isEmpty {
            queue.append(arr[i])
        } else if queue.last != arr[i] {
            queue.append(arr[i])
        } else if queue.last == arr[i] {
            queue.removeLast()
        }
        
    }
    
    return queue.isEmpty ? true : false
    
}
print(count)
