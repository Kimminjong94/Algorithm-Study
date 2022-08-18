import Foundation

var nk: Array<String> = []
var n: Int
var k: Int
nk = readLine()!.components(separatedBy: " ")
n = Int(nk[0])!
k = Int(nk[1])!

var queue = ArraySlice<Int>(1 ... n)

var result = ""

while(queue.isEmpty == false){
    for i in 0 ..< k{
        if i + 1 == k{
            let a = String(queue.first!)
            queue = queue.dropFirst()
            result.append(a + ", ")
        }else{
                let a = queue.first!
                queue = queue.dropFirst()
                queue.append(a)
        }
    }
}
result.removeLast()
result.removeLast()
print("<" + result + ">")