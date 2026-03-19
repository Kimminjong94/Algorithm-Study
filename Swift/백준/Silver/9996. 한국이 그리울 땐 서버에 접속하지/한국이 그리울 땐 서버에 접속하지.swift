
let n = Int(readLine()!)!
let pattern = readLine()!

let parts = pattern.split(separator: "*")
let prefix = String(parts[0])
let suffix = String(parts[1])

for _ in 0..<n {
    let file = readLine()!
    
    if file.count < prefix.count + suffix.count {
        print("NE")
        continue
    }
    
    if file.hasPrefix(prefix) && file.hasSuffix(suffix) {
        print("DA")
    } else {
        print("NE")
    }
}