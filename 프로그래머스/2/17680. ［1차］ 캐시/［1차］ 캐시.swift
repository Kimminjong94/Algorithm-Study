import Foundation

func solution(_ cacheSize: Int, _ cities: [String]) -> Int {
    
    guard cacheSize != 0 else {return 5 * cities.count}

    var cities = cities.map{$0.lowercased()}
    var tmpCities: [String] = []
    var count = 0
    
    for city in cities {
        
        if tmpCities.count < cacheSize && !tmpCities.contains(city) {
            tmpCities.append(city)
            count += 5
        } else if tmpCities.contains(city) {
            tmpCities.removeAll { $0 == city}
            tmpCities.append(city)
            count += 1
        } else {
            tmpCities.removeFirst()
            tmpCities.append(city)
            count += 5
        }
    }
    return count
}