import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    var input = readLine()!.split(separator: " ").map {Int($0)!}
    let N = input.removeFirst()
    
    print(solution(N, input))
}


func solution(_ n: Int, _ arr: [Int]) -> Int {
    var answer = 0
    
    for i in 0..<n-1 {
        for j in i+1..<n {
            answer += gcd(arr[i], arr[j])
        }
    }
    return answer
}

func gcd(_ a: Int, _ b: Int) -> Int {
    
    var x = a
    var y = b
    
    while y != 0 {
        let tmp = x % y
        x = y
        y = tmp
    }
    return x
}
