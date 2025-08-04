let n = Int(readLine()!)!
let house_location = (0..<n).map { _ in readLine()!.map { Int(String($0))! } }
var visited = Array(repeating: Array(repeating: false, count: n), count: n)

var houseCount = 0
var answer: [Int] = []

func dfs(_ x: Int, _ y: Int) {
    // 범위 밖이거나 이미 방문했거나 집이 아닌 경우 리턴
    if x < 0 || y < 0 || x >= n || y >= n { return }
    if visited[x][y] || house_location[x][y] == 0 { return }
    
    visited[x][y] = true
    houseCount += 1
    
    let dx = [0, 1, 0, -1]
    let dy = [1, 0, -1, 0]
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        dfs(nx, ny)
    }
}

for i in 0..<n {
    for j in 0..<n {
        if house_location[i][j] == 1 && !visited[i][j] {
            houseCount = 0
            dfs(i, j)
            answer.append(houseCount)
        }
    }
}

print(answer.count)
answer.sorted().forEach { print($0) }