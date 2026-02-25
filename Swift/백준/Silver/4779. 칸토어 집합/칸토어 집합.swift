
import Foundation

var dp = Array(repeating: "", count: 13)
dp[0] = "-"


for i in 1..<13 {
    let emptyCount = String(repeating: " ", count: dp[i-1].count)
    dp[i] = dp[i-1] + emptyCount + dp[i-1]
}


while true {
   let N = readLine() ?? "finished"
    
    if N == "finished" {
        break
    }
     
    print(dp[Int(N)!])
}
