import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var count = 0
    
    func dfs(_ num: Int, _ midSum: Int) -> Int {
        
        if num == numbers.count {
            count = midSum == target ? count + 1 : count
            return count
        }
        
        dfs(num + 1, midSum + numbers[num])
        dfs(num + 1, midSum - numbers[num])

        
        return count
    }
    
    dfs(0, 0)
    
    return count
}