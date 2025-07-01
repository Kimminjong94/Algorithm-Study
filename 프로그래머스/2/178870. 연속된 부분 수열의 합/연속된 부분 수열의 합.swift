import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    var start = 0
    var end = 0
    var sum = sequence[0]
    var answer = [Int]()
    var minDiff = Int.max

    while start < sequence.count && end < sequence.count {
        if sum == k {
            let diff = end - start
            if diff < minDiff {
                minDiff = diff
                answer = [start, end]
            }
            sum -= sequence[start]
            start += 1
        } else if sum < k {
            end += 1
            if end < sequence.count {
                sum += sequence[end]
            }
        } else {
            sum -= sequence[start]
            start += 1
        }
    }

    return answer
}