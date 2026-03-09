import Foundation

let N = Int(readLine()!)!

var isPrime = Array(repeating: true, count: N + 1)
isPrime[0] = false
isPrime[1] = false

var i = 2
while i * i <= N {
    if isPrime[i] {
        var j = i * i
        while j <= N {
            isPrime[j] = false
            j += i
        }
    }
    i += 1
}

let primes = isPrime.enumerated().compactMap { $0.element ? $0.offset : nil }

var left = 0
var right = 0
var sum = 0
var count = 0

while true {

    if sum >= N {
        sum -= primes[left]
        left += 1
    } else {
        if right == primes.count { break }
        sum += primes[right]
        right += 1
    }

    if sum == N {
        count += 1
    }
}

print(count)
