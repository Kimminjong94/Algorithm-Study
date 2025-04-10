let start = readLine()!
    .split(separator: " ")
    .map { Int($0)! }

let estM = Int(readLine()!)! + start[1]
let estH = estM / 60 + start[0]

if estH > 23 {
    print((estH % 24), (estM % 60))
} else {
    print(estH, estM % 60)
}