import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    
    let newArray:[Int] = numlist.map{$0 - n}.sorted {
        
        if abs($0) == abs($1) {
            return $0 > $1
        } else {
            return abs($0) < abs($1)
        }
    }
    
    return newArray.map{$0 + n}
}