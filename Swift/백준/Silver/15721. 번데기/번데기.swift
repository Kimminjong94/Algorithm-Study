import Foundation

let A = Int(readLine()!)!
var T = Int(readLine()!)!
let BbunDagie = Int(readLine()!)!

var times = 2

var index = 0

while T > 0 {
    // 기본 패턴 [0,1,0,1]
    for value in [0, 1, 0, 1] {
        if value == BbunDagie {
            T -= 1
            if T == 0 {
                print(index % A)
                exit(0)
            }
        }
        index += 1
    }
    
    // times번 0
    for _ in 0..<times {
        if 0 == BbunDagie {
            T -= 1
            if T == 0 {
                print(index % A)
                exit(0)
            }
        }
        index += 1
    }
    
    // times번 1
    for _ in 0..<times {
        if 1 == BbunDagie {
            T -= 1
            if T == 0 {
                print(index % A)
                exit(0)
            }
        }
        index += 1
    }
    
    times += 1
}