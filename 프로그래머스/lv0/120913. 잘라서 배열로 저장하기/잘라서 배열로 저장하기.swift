import Foundation

   func solution(_ my_str:String, _ n:Int) -> [String] {
        
        var newStringArray = Array(my_str)
        var stringArray:[String] = []
        
        while newStringArray.count > n {
            stringArray.append(String(newStringArray[0...n-1]))
            newStringArray.removeSubrange(0...n-1)
        }
        
        stringArray.append(String(newStringArray))

        return stringArray
    }