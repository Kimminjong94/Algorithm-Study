import Foundation
let T = Int(readLine()!)!

for _ in 0..<T {
    let inp = readLine()!.split(separator: " " ).map{Int(String($0))!}
    let _ = inp[0], M = inp[1]
    var list = readLine()!.split(separator: " " ).enumerated().map{($0,Int(String($1))!)}
    
    var count = 1
    while !list.isEmpty {
        let target = list.first!
        var find = false
        for i in 1..<list.count {
            if list[i].1 > target.1 {
                list.append(list.removeFirst())
                find = true
                break
            }
        }
        
        if !find {
            let deleted = list.removeFirst()
            if M == deleted.0 {
                print(count)
                break
            }
            count += 1
        }
    }
}