import Foundation

func solution(_ n:Int) -> [Int] {
    var pingping = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    var curnum = 1
    var x = -1, y = 0 //시작시 x좌표가 증가하므로 -1로 초기화 시킨다.
    
    var result = [Int]()
    //첫 시작은 하강, 방향 전환은 n회 일어난다.
    for i in 0..<n{
        for _ in i..<n{
            if i % 3 == 0{
                x += 1
            }else if i % 3 == 1{
                y += 1
            }else{
                x -= 1
                y -= 1
            }
            pingping[x][y] = curnum

            curnum += 1
        }
    }
    
    //순서대로 0이 아니면 추가
    for i in 0..<n{
        for j in 0..<n{
            if pingping[i][j] != 0 { result.append(pingping[i][j]) }
        }
    }
    
    return result
}