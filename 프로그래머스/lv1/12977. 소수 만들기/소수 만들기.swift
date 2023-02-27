import Foundation

func isPrime(_ number: Int) -> Bool {
    if number < 2 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            print(number, i)
            return false
        }
    }
    return true
}

func solution(_ nums:[Int]) -> Int {
    
    var combination:[Int] = []
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                let sum = nums[i] + nums[j] + nums[k]
                combination.append(sum)
            }
        }
    }
    return combination.filter{isPrime($0)}.count
}