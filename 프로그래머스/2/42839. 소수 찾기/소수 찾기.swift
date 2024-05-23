import Foundation

func solution(_ numbers:String) -> Int {
    let nums = numbers.map { String($0) }
    var visited = [Bool]()
    var numSet = Set<Int>()

    func permutaion(_ numArr: [String], count: Int, rCount: Int) {
        if count == rCount {
            numSet.insert(Int(numArr.joined())!)
            return
        }

        for (idx, value) in nums.enumerated() {
            if visited[idx] {
                continue
            }

            var newNumArr = numArr
            newNumArr.append(value)

            visited[idx] = true

            permutaion(newNumArr, count: count + 1, rCount: rCount)
            visited[idx] = false
        }
    }

    for i in 1...nums.count {
        visited = Array(repeating: false, count: nums.count)
        permutaion([], count: 0, rCount: i)
    }

    return numSet.filter { checkPrime(of: $0) }.count


}

func checkPrime(of num: Int) -> Bool {
    if num < 4 {
        return num <= 1 ? false : true
    } else {
        var isPrime = true
        var i = 2

        while i * i <= num {
            if num % i == 0 {
                isPrime = false
                break
            }
            i += 1
        }

        return isPrime
    }
}