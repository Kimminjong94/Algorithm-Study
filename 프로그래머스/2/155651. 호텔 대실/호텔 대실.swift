import Foundation

func solution(_ book_time:[[String]]) -> Int {
    
    // 시간을 분으로 변환하는 함수
    func timeToMinutes(_ time: String) -> Int {
        let parts = time.split(separator: ":").map { Int($0)! }
        return parts[0] * 60 + parts[1]
    }
    
    // 예약시간을 정렬 (시작 시간 기준)
    let bookTime = book_time.sorted { $0[0] < $1[0] }
    
    // 방의 종료시간 목록 (분 단위)
    var endTimes: [Int] = []
    
    for time in bookTime {
        let start = timeToMinutes(time[0])
        let end = timeToMinutes(time[1]) + 10 // 청소시간 10분 추가
        
        // 현재 예약을 기존 방 중 가장 빨리 끝나는 방에 배치할 수 있는지 확인
        if let index = endTimes.firstIndex(where: { $0 <= start }) {
            endTimes[index] = end
        } else {
            // 새 방 필요
            endTimes.append(end)
        }
        
        // 방 종료시간 오름차순 정렬 (가장 빨리 비는 방부터 확인하기 위해)
        endTimes.sort()
    }
    
    return endTimes.count
}