import Foundation

func solution(_ dots:[[Int]]) -> Int {
    
    let widthStart = dots.min(by: {$0[0] < $1[0]})![0]
    let widthEnd = dots.min(by: {$0[0] > $1[0]})![0]
    let heightStart = dots.min(by: {$0[1] < $1[1]})![1]
    let heightEnd = dots.min(by: {$0[1] > $1[1]})![1]
    
    return (widthEnd - widthStart) * (heightEnd - heightStart)
}