import Foundation


let G = Int(readLine()!)!
let P = Int(readLine()!)!

var count = 0
var dict = [Int:Int]()
var end = false
for _ in 0..<P {
    let g = Int(readLine()!)!
    if end { continue }

    if g > G {
        dict[G] = dfs(G)
        if dict[G]! > 0 {
            count += 1
        }else {
            end = true
        }
    }else {
        dict[g] = dfs(g)
        if dict[g]! > 0 {
            count += 1
        }else {
            end = true
        }
    }
}

print(count )
func dfs(_ x : Int ) -> Int {
    if let val = dict[x] {
        return dfs(val-1)
    }else {
        dict[x] = x
        return x
    }
}