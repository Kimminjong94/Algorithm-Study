import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]

var A = readLine()!.split(separator: " ").map { Int($0)! }
var tmp = Array(repeating: 0, count: N)

var count = 0
var answer = -1

func mergeSort(_ p: Int, _ r: Int) {
    if p >= r || count >= K { return }

    let q = (p + r) / 2
    mergeSort(p, q)
    mergeSort(q + 1, r)
    merge(p, q, r)
}

func merge(_ p: Int, _ q: Int, _ r: Int) {
    var i = p
    var j = q + 1
    var t = 0

    while i <= q && j <= r {
        if A[i] <= A[j] {
            tmp[t] = A[i]
            i += 1
        } else {
            tmp[t] = A[j]
            j += 1
        }
        t += 1
    }

    while i <= q {
        tmp[t] = A[i]
        i += 1
        t += 1
    }

    while j <= r {
        tmp[t] = A[j]
        j += 1
        t += 1
    }

    i = p
    t = 0

    while i <= r {
        A[i] = tmp[t]
        count += 1

        if count == K {
            answer = A[i]
            return
        }

        i += 1
        t += 1
    }
}

mergeSort(0, N - 1)
print(answer)