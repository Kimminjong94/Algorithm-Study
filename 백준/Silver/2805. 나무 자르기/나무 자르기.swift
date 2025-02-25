let NM = readLine()!.split(separator: " ").map{Int($0)!}
let needHeight = NM[1]
let treeHeights = readLine()!.split(separator: " ").map{Int($0)!}


func solution(_ trees: [Int]) -> Int {
    
    var start = 1
    var end = trees.max() ?? 0
    
    while start <= end {
        let mid = (start + end) / 2
        var tmpCuttedTrees = 0
        
        for tree in trees {
            if tree - mid < 0 { continue }
            tmpCuttedTrees += tree - mid
        }
        
        if tmpCuttedTrees < needHeight {
            end = mid - 1
        } else {
            start = mid + 1
        }
        
    }
 
    return start - 1
}

print(solution(treeHeights))