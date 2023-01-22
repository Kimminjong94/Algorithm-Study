import Foundation

func solution(_ M:Int, _ N:Int) -> Int {
    
    
    var newM = M
    let changedHeight = (M * N) - M
    var count = 0
    
    while newM > 1 {
        count += 1
        newM -= 1
    }
    
    
    
    
    
    
    
    
    return changedHeight + count
}