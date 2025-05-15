import Foundation

func solution(_ cacheSize: Int, _ cities: [String]) -> Int{
    let tmp = cities.map{ $0.uppercased() }
    var count = 0
    var cache = [String]()
    
    for city in tmp{
        if cache.contains(city){
            count += 1
            
            cache.remove(at: cache.firstIndex(of: city)!)
            cache.append(city)
        } else {
            count += 5
            cache.append(city)
            if cache.count > cacheSize{
                cache.removeFirst()
            }
        }
    }
    
    return count
    
}