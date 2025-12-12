import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]

var count = 0

for i in 1...N {
    if N % i == 0 {     // i가 N의 약수인지 확인
        count += 1
        if count == K { // K번째 약수라면 출력하고 종료
            print(i)
            exit(0)
        }
    }
}

// K번째 약수가 없다면 0 출력
print(0)