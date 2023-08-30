func solution(_ s:String) -> String {
    let a = s.split(separator: " ").map{Int($0)!}
    return [a.min()!, a.max()!].map{String($0)}.joined(separator: " ")
}