let T = Int(readLine()!)!

for _ in 0..<T {
    let _ = readLine()!.split(separator: " ").map{Int($0)!}
    let A = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
    let B = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    
    print(findPair(A, B))
}


func findPair(_ A: [Int], _ B: [Int]) -> Int {
    
    var left = 0
    var count = 0

    while left < A.count {
        
        let aValue = A[left]

        for i in 0..<B.count {
            if B[i] >= aValue {
                break
            } else {
                count += 1
            }
        }
        left += 1
    }
    return count
    
}
