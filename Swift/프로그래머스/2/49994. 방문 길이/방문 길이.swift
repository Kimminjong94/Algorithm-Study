import Foundation

func solution(_ dirs: String) -> Int {
    var x = 0, y = 0
    var visited = Set<[[Int]]>()  // (현재위치, 다음위치) 쌍을 저장
    let moves: [Character: (Int, Int)] = ["U": (0, 1), "D": (0, -1), "L": (-1, 0), "R": (1, 0)]
    
    for dir in dirs {
        guard let move = moves[dir] else { continue }
        let nx = x + move.0
        let ny = y + move.1
        
        // 좌표 범위 -5~5 이내인지 확인
        if nx < -5 || nx > 5 || ny < -5 || ny > 5 {
            continue
        }
        
        // 양방향으로 경로 저장
        visited.insert([[x, y], [nx, ny]])
        visited.insert([[nx, ny], [x, y]])
        
     
        x = nx
        y = ny
    }
    
    return visited.count / 2
}