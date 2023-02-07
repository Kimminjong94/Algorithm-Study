import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    
 
    var exis = 0
    var newNum = total
    
    for i in 0..<num {
        exis += 1
        newNum -= i
        	
    }
    
    return Array((newNum / exis)...(num + (newNum / exis) - 1))
}