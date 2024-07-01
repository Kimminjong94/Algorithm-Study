import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var count = 0


    func dfs(nextNumber: Int, sum: Int) {
        
        guard nextNumber != numbers.count else {
            if sum == target {
                count += 1
            }
            return
        }
        
        dfs(nextNumber: nextNumber + 1, sum: sum + numbers[nextNumber])
        dfs(nextNumber: nextNumber + 1, sum: sum - numbers[nextNumber])
    
        
    }
    dfs(nextNumber: 0, sum: 0)

    return count
}