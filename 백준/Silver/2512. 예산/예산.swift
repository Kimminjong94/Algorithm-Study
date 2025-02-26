let N = Int(readLine()!)!
let needBudgets = readLine()!.split(separator: " ").map{Int($0)!}
let heighestBudget = needBudgets.max()!
let totalBudget = Int(readLine()!)!


func binarySearch(_ budgets: [Int]) -> Int {
    
    var start = 1
    var end = heighestBudget
    
    while start <= end {
        var tmpSum = 0
        let mid = (start + end) / 2
        
        for budget in budgets {
            tmpSum += mid - budget >= 0 ? budget : mid
        }
        
        if tmpSum <= totalBudget {
            start = mid + 1
        } else {
            end = mid - 1
        }
        
    }
    return start - 1
}


print(binarySearch(needBudgets))