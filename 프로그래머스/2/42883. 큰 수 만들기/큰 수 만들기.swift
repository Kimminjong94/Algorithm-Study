import Foundation

func solution(_ number:String, _ k:Int) -> String {
    
    var k = k
    var number = Array(number)
    var stack = [Character]()
    
    
    for (index, value) in number.enumerated() {
        
        while !stack.isEmpty && k > 0 && stack.last!.wholeNumberValue! < value.wholeNumberValue! {

            stack.removeLast()
            k -= 1
        }
        
        if stack.count < number.count - k {
            stack.append(value)
        }

    }
    
    return String(stack)
}