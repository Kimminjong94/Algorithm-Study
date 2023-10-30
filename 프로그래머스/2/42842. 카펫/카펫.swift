import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var result = [0, 0]
    let S = brown + yellow
    for width in stride(from: 1, through: S - 1, by: 1){
        if S % width != 0 {continue}
        let height = S / width
        if width < height{continue}
        if (width - 2) * (height - 2) == yellow{
            result = [width, height]
        }
    }
    
    return result
}