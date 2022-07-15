import Foundation

func getDays(_ arr: Array<Int>)->Int{
    let l = arr[0], p = arr[1], v = arr[2]
    var days = v/p*l
    if l >= v%p {
        days += v%p
    }else{
        days += l
    }
    return days
}
var cnt = 1
while(true){
    let arr = Array(readLine()!.split(separator: " ").map{Int($0)!})
    if arr == [0,0,0] {exit(0)}
    print("Case \(cnt):", getDays(arr))
    cnt += 1
}