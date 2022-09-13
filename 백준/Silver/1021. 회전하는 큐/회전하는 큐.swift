var nm = readLine()!.split(separator: " ").map{Int($0)!}
let n = nm[0], m = nm[1]
var targets = Array(readLine()!.split(separator: " ").map{Int($0)!})
var arr = Array(1...n)
var answer = 0

func rotate(_ direction: Int){
    if direction == -1{
        let temp = arr.removeFirst()
        arr.append(temp)
    }else{
        let temp = arr.removeLast()
        arr.insert(temp, at: 0)

    }
}
func find(){
    let target = targets[0]
    let targetIdx = arr.firstIndex(of: target)!
    if target == arr[0] {
        targets.removeFirst()
        arr.removeFirst()
    }else if targetIdx > arr.count/2{
        rotate(1)
        answer += 1
    }else{
        rotate(-1)
        answer += 1
    }
}

while(!targets.isEmpty){
    find()
}

print(answer)