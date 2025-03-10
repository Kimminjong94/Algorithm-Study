import Foundation

func solution(_ s:String) -> Int{
    var arrString = Array(s)
    var tmpArr = [String]()
    
    for i in 0..<arrString.count {
        let nowString = String(arrString[i])
        
        if tmpArr.isEmpty {
            tmpArr.append(nowString)
        } else if tmpArr.last! == nowString {
            tmpArr.removeLast()
        } else if tmpArr.last! != nowString {
            tmpArr.append(nowString)
        }
    }
    return tmpArr.isEmpty ? 1 : 0
}
