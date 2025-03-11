import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    
    for height in 1...yellow {
        if yellow % height != 0 {
            continue
        }
    
        let width = yellow / height
                
        let topBottomSize = (width + 2) * 2
        let sideSize = height * 2
        
        if topBottomSize + sideSize == brown {
            return [topBottomSize / 2, (sideSize / 2) + 2]
        }
    }
    return []
}