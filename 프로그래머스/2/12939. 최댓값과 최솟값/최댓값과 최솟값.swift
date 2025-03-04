func solution(_ s:String) -> String {
    let newS = s.split(separator: " ").map{Int($0)!}.sorted()
    let answer = [String(newS.first!)," ", String(newS.last!)]
    return answer.reduce("", +)
}