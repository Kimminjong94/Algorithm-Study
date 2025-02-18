let n = Int(String(readLine()!))
let num = readLine()!.map{Int(String($0))!}

print(num.reduce(0, +))