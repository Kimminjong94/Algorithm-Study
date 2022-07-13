var input = Int(readLine()!)!
var totalNum: Int = 0

for _ in 0...input {
    
    totalNum += input
    input -= 1
   
}

print(totalNum)