func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    if cacheSize == 0 {
        return 5 * cities.count
    }
    
    var cities = cities.map{$0.lowercased()}
    var cache:[String] = []
    var count = 0
    
    for i in cities {
        if cache.contains(i) {
            count += 1
            cache.remove(at: cache.firstIndex(of: i)!)
            cache.append(i)
        } else if !cache.contains(i) {
            count += 5
            cache.append(i)
            if cache.count > cacheSize {
                cache.removeFirst()
            }
        }
    }
    return count
}