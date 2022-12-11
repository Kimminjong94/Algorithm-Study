import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    
    let arr1 = s1.filter{s2.contains($0)}

    return arr1.count
}