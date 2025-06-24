import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    let basicTime = fees[0]
    let basicFee = fees[1]
    let unitTime = fees[2]
    let unitPrice = fees[3]
    
    var inRecords: [String: Int] = [:]
    var totalTimes: [String: Int] = [:]

    // 시간 문자열을 분 단위로 변환하는 함수
    func timeToMinutes(_ time: String) -> Int {
        let timeParts = time.split(separator: ":").map{ Int($0)! }
        return timeParts[0] * 60 + timeParts[1]
    }
    
    for record in records {
        let parts = record.split(separator: " ").map{ String($0) }
        let time = timeToMinutes(parts[0])
        let carNumber = parts[1]
        let type = parts[2]
        
        if type == "IN" {
            inRecords[carNumber] = time
        } else {
            let inTime = inRecords[carNumber]!
            let duration = time - inTime
            totalTimes[carNumber, default: 0] += duration
            inRecords.removeValue(forKey: carNumber)
        }
    }
    
    // 출차 기록 없는 차량 처리 (23:59 출차)
    for (carNumber, inTime) in inRecords {
        let duration = timeToMinutes("23:59") - inTime
        totalTimes[carNumber, default: 0] += duration
    }
    
    // 요금 계산 함수
    func calculateFee(_ time: Int) -> Int {
        if time <= basicTime {
            return basicFee
        } else {
            let extraTime = time - basicTime
            let unitCount = Int(ceil(Double(extraTime) / Double(unitTime)))
            return basicFee + unitCount * unitPrice
        }
    }
    
    // 차량 번호 오름차순 정렬 후 요금 계산
    let result = totalTimes.sorted { $0.key < $1.key }.map {
        calculateFee($0.value)
    }
    
    return result
}