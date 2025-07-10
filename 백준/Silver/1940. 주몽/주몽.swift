let N = Int(readLine()!)!
let M = Int(readLine()!)!
var materials = readLine()!.split(separator: " ").map {Int($0)!}

materials.sort()

var left = 0
var right = N - 1
var count = 0

while left < right {
    let sum = materials[left] + materials[right]
    
    if sum == M {
        count += 1
        left += 1
        right -= 1
    } else if sum < M {
        left += 1
    } else {
        right -= 1
    }
    
    
}

print(count)