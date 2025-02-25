let kn = readLine()!.split(separator: " ").map { Int(String($0))! }
let k = kn[0]
let n = kn[1]
var cables = [Int]()
for _ in 0..<k {
    cables.append(Int(readLine()!)!)
}


func solution(k: Int, n: Int, cables: [Int]) -> Int {
    var start = 1
    var end = cables.max()!
    var result = 0
    
    while start <= end {
        let mid = (start + end) / 2
        var tmp = 0

        
        for cable in cables {
            tmp += cable / mid
        }
        
        if tmp < n {
            end = mid - 1
        } else {
            start = mid + 1
            result = mid
        }
    
    }
    
    return result

}

print(solution(k: k, n: n, cables: cables))
