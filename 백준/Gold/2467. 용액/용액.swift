let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
var answer:[Int] = []

func binarySearch() {

    var left = 0
    var right = N - 1
    var minNum = Int.max
    
    while left < right {
        let sum = arr[left] + arr[right]
        
        if abs(sum) <= minNum {
            minNum = abs(sum)
            answer = [arr[left], arr[right]]
        }
        
        if sum < 0 {
            left += 1
        } else {
            right -= 1
        }
       
    }
}

binarySearch()
print(answer[0], answer[1])