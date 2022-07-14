var input = readLine()!.split(separator: " ").map{Int($0)!}
var inputNum = readLine()!.split(separator: " ")

for i in inputNum {
    if Int(i)! < input[1] {
        print(i, terminator: " ")

    }
    
    
}