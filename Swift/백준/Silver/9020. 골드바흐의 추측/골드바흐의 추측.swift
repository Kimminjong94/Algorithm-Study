import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = Int(readLine()!)!
    
    let primes = findPrime(input)
    let answer = solution(primes, input)
    print(answer)
}

func findPrime(_ n: Int) -> [Int] {

    var isPrime = Array(repeating: true, count: n + 1)
    isPrime[0] = false
    isPrime[1] = false
    
    var i = 2
    while i * i <= n {
        if isPrime[i] {
            
            var j = i * i
            while j <= n {
                isPrime[j] = false
                j += i
            }
            
        }
        i += 1
    }
    
    var result: [Int] = []
    
    for i in 2...n {
        if isPrime[i] {
            result.append(i)
        }
    }
    return result
    
}

func solution(_ primes: [Int], _ goal: Int) -> String {
    
    var count = goal
    var answer:[Int] = []
    
    for i in 0..<primes.count - 1 {
        for j in i..<primes.count {

            if primes[i] + primes[j] == goal {
                if j - i < count {
                    count = j - i
                    answer = [primes[i], primes[j]]
                }
            }
        }
    }
    return answer.map{String($0)}.joined(separator: " ")
}