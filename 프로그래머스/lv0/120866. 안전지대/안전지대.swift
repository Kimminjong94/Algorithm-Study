import Foundation


func solution(_ board:[[Int]]) -> Int {
    
    var newBoard = board

    let width = board[0].count
    let heigh = board.count
    
    for i in 0..<heigh {
        for j in 0..<width {
            // 지뢰를 만나면 8방향 탐색
            if newBoard[i][j] == 1 {
                // 바뀌어야 되는 모든 인덱스
                    let allIndex = [
                        (i-1, j-1), (i-1,j), (i-1,j+1),
                        (i,j-1), (i,j+1),
                        (i+1, j-1), (i+1, j), (i+1, j+1)
                    ]
                    // 유효한 인덱스인지 검사
                    for (nextI, nextJ) in allIndex {
                        if (0..<heigh).contains(nextI) && (0..<width).contains(nextJ) && newBoard[nextI][nextJ] == 0 {
                            newBoard[nextI][nextJ] = 2
                        }
                    }
            }
        }
    }
    
    print(newBoard)
    return newBoard.flatMap{$0}.filter{$0 == 0}.count
}