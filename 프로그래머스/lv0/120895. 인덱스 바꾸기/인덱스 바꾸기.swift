import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    
    var answer:[String] = []
    
    for (index, value) in my_string.enumerated() {
        if index == num1 {
            answer.append(String(Array(my_string)[num2]))
        } else if index == num2 {
            answer.append(String(Array(my_string)[num1]))
        } else {
            answer.append(String(value))
        }
    }
    return answer.joined()
}