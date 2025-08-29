import Foundation

var count = 0

func recursion(_ s: [Character], _ l: Int, _ r: Int) -> Int {
    count += 1
    if l >= r {
        return 1
    } else if s[l] != s[r] {
        return 0
    } else {
        return recursion(s, l+1, r-1)
    }
}

func isPalindrome(_ str: String) -> (Int, Int) {
    count = 0
    let s = Array(str)
    let result = recursion(s, 0, s.count - 1)
    return (result, count)
}

let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!
    let (res, cnt) = isPalindrome(input)
    print("\(res) \(cnt)")
}