import Foundation

let input = String(data: FileHandle.standardInput.readDataToEndOfFile(), encoding: .utf8)!
var tokens = input.split{ $0 == "\n" || $0 == " " || $0 == "\t" }.map { String($0) }
var idx = 0
func nextInt() -> Int {
    let v = Int(tokens[idx])!
    idx += 1
    return v
}

let T = nextInt()
let moves = [(1,2),(1,-2),(-1,2),(-1,-2),(2,1),(2,-1),(-2,1),(-2,-1)]

var outputs: [String] = []

for _ in 0..<T {
    let l = nextInt()
    let sx = nextInt(); let sy = nextInt()
    let tx = nextInt(); let ty = nextInt()
    
    if sx == tx && sy == ty {
        outputs.append("0")
        continue
    }
    
    var dist = Array(repeating: Array(repeating: -1, count: l), count: l)
    var qx = [Int]()
    var qy = [Int]()
    var head = 0
    qx.append(sx); qy.append(sy)
    dist[sx][sy] = 0
    
    while head < qx.count {
        let x = qx[head]; let y = qy[head]
        head += 1
        let d = dist[x][y]
        for m in moves {
            let nx = x + m.0
            let ny = y + m.1
            if nx >= 0 && nx < l && ny >= 0 && ny < l && dist[nx][ny] == -1 {
                dist[nx][ny] = d + 1
                if nx == tx && ny == ty {
                    head = qx.count // break outer loop
                    break
                }
                qx.append(nx); qy.append(ny)
            }
        }
    }
    outputs.append(String(dist[tx][ty]))
}

print(outputs.joined(separator: "\n"))