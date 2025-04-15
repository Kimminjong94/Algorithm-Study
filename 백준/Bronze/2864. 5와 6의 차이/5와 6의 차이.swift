import Foundation

let N = readLine()!.split(separator: " ").map{Int($0)!}
var tmpToFive:[Int] = []
var tmpToSix:[Int] = []

for i in N {
    if String(i).contains("5") || String(i).contains("6") {
        let changedToSix = String(i).replacingOccurrences(of: "5", with: "6")
        let changedFive = String(i).replacingOccurrences(of: "6", with: "5")
        tmpToFive.append(Int(changedToSix)!)
        tmpToSix.append(Int(changedFive)!)
        
    } else {
        tmpToFive.append(i)
        tmpToSix.append(i)
    }
}

print(tmpToSix.reduce(0, +), tmpToFive.reduce(0, +))
