import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    
     n%slice == 0 ? (n/slice) : (n/slice) + 1 
}