import Foundation

func solution(_ my_string:String) -> Int {
    
    let newString = my_string.components(separatedBy: ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]).filter{$0 != ""}.map{Int($0)!}
    
    return newString.reduce(0, +)
}