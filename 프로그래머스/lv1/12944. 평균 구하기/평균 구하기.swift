func solution(_ arr:[Int]) -> Double {
    
    // let sum: Int = arr.reduce(0) {$0 + $1}
    // var countNum = arr.count
    // var average = Double(sum) / Double(countNum)
    
    let sum = Double(arr.reduce(0, +)) / Double(arr.count)
    
    
    
    return sum
}