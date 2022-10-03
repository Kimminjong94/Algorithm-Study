func solution(_ arr:[Int]) -> Double {
    
    let sum: Int = arr.reduce(0) {$0 + $1}
    var countNum = arr.count
    var average = Double(sum) / Double(countNum)
    
    return average
}