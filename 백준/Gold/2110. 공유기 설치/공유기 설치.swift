let nc = readLine()!.split(separator: " ").map{ Int($0)! }
let n = nc[0]
let c = nc[1]
var home = [Int]()

for _ in 0..<n {
    home.append(Int(readLine()!)!)
}
home.sort()

var left = 1
var right = home[home.count - 1] - home[0]
var answer = -999

while left <= right {
    var start = home[0]
    var cnt = 1
    let mid = (left + right) / 2
    for i in 0..<n {
        let d = home[i] - start
        
        if mid <= d {
            cnt += 1
            start = home[i]
        }
    }

    if c <= cnt {
        answer = mid
        left = mid + 1
    } else {
        right = mid - 1
    }
}

print(answer)