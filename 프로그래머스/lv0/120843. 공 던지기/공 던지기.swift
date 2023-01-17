import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
     numbers[(k - 1) * 2 % numbers.count]
}