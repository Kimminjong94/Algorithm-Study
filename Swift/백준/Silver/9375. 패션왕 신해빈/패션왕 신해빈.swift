import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let N = Int(readLine()!)!

    var clothCount:[String:Int] = [:]
    
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map{String($0)}
        clothCount[input[1], default: 0] += 1
        
    }
    solution(clothCount)
    
}

func solution(_ clothes: [String: Int]) {
    var answer = 1

    for count in clothes.values {
        answer *= (count + 1)
    }

    answer -= 1
    print(answer)
}
