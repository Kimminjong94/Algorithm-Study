import Foundation

func solution(_ n:Int) -> Int {

    var count = 0

    
    for i in 1...n {
        
       count += 1
        while count % 3 == 0 || String(count).contains("3") {
            count += 1
        }
    }
    return count
}