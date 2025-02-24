let n = Int(readLine()!)!
var arrayN = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

let m = Int(readLine()!)!
var arrayM = readLine()!.split(separator: " ").map{Int($0)!}


func binarySearch(_ target: Int) -> Int {
    
    var start = 0
    var end = n - 1
    
    while start < end {
        let mid = (start + end) / 2
        
        if arrayN[mid] >= target {
            end = mid
        } else {
            start = mid + 1
        }
    }
    
    if arrayN[start] == target {
        return 1
    } else {
        return 0
    }
    
    
}

for i in arrayM {
    
    print(binarySearch(i))
    
}