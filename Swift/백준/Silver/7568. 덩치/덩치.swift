let N = Int(readLine()!)!
let weightHeight = (0..<N).map { _ in readLine()!.split(separator: " ").map {Int($0)!}}
var ranking:[Int] = []

for meIndex in 0..<N {
    var nowRank = 1
    
    for comparePersonIndex in 0..<N {
        
        let meWeight = weightHeight[meIndex][0]
        let meHeight = weightHeight[meIndex][1]
        
        let compareWeight = weightHeight[comparePersonIndex][0]
        let compareHeight = weightHeight[comparePersonIndex][1]
        
        if meWeight < compareWeight && meHeight < compareHeight {
            nowRank += 1
        }
    }
    ranking.append(nowRank)
}

print(ranking.map{String($0)}.joined(separator: " "))