import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    
 
    var newNum = total

    for i in 0..<num {
        newNum -= i
        	
    }
    
    return Array((newNum / num)...(num + (newNum / num) - 1))
}