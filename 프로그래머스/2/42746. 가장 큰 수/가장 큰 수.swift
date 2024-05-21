import Foundation

func solution(_ numbers:[Int]) -> String {
    
   
    
    var numbers = numbers.sorted(by: {

        if String($0).first! == String($1).first! {
            return String($0) + String($1) > String($1) + String($0)
        } else {
            return String($0).first! > String($1).first!
        }
    })
    
    
    
    return numbers[0] == 0 ? "0" : numbers.map{String($0)}.joined()
}