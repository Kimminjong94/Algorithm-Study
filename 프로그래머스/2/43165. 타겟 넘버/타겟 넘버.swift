import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var count = 0
    
    func dfs(_ index: Int, _ sum: Int) {
        
        if index == numbers.count - 1 && sum == target {
            count += 1
            return
        }
        
        
        guard index + 1 < numbers.count else { return }
        
        
        dfs(index + 1, sum + numbers[index + 1])
        dfs(index + 1, sum - numbers[index + 1])
    }
    
    
    dfs(-1, 0)
    
    return count
}
