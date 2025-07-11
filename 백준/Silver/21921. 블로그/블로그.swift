let NX = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NX[0]
let X = NX[1]

let visitors = readLine()!.split(separator: " ").map{ Int($0)! }


var sum = visitors[0..<X].reduce(0, +)
var maxSum = sum
var count = 1



for i in X..<N {
    sum = sum - visitors[i - X] + visitors[i]

    if sum > maxSum {
        maxSum = sum
        count = 1
    } else if sum == maxSum {
        count += 1
    }
}

if maxSum == 0 {
    print("SAD")
} else {
    print(maxSum)
    print(count)
}
