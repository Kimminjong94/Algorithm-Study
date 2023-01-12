import Foundation

func solution(_ s:String) -> String {
    var result = ""
    var temp = ""
    for i in s {
        if !result.contains(i), !temp.contains(i) {
            result.append(i)
            temp.append(i)
        }else if result.contains(i), temp.contains(i) {
            result.remove(at: result.firstIndex(of: i)!)
        }
    }
    
    
    print(result)
    print(temp)
    return String(result.map { $0 }.sorted())
}