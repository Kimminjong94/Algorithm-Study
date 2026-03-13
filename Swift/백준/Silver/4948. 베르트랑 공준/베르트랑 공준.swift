import Foundation

let MAX = 246912

var isPrime = Array(repeating: true, count: MAX + 1)

isPrime[0] = false
isPrime[1] = false

func sieve() {
    var i = 2
    while i * i <= MAX {
        if isPrime[i] {

            var j = i * i
            while j <= MAX {
                isPrime[j] = false
                j += i
            }

        }

        i += 1
    }
}

sieve()

while true {

    let n = Int(readLine()!)!

    if n == 0 { break }

    var count = 0

    for i in (n + 1)...(2 * n) {
        if isPrime[i] {
            count += 1
        }
    }

    print(count)
}
