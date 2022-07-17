let input = Int(readLine()!)!

let inputArr = readLine()!.split(separator: " ").map({ Int($0)! })


let minNum = inputArr.min()
let maxNum = inputArr.max()
    
print("\(minNum!) \(maxNum!)")