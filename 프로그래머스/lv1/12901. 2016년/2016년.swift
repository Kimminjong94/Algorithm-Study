func solution(_ a:Int, _ b:Int) -> String {
    
    var dayCount = 0
    let weekStr = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    
    for i in 1..<a {
        switch i {
        case 1,3,5,7,8,10,12:
            dayCount += 31
        case 2:
            dayCount += 29
        default:
            dayCount += 30
        }
    }
    return weekStr[(dayCount + b) % 7]
}