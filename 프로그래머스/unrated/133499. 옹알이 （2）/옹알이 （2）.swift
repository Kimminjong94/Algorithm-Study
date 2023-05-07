import Foundation

func solution(_ babbling:[String]) -> Int {
    
    
    return babbling.map { counting($0) }.filter { $0 }.count

    
}


func counting(_ word: String) -> Bool {
    
    let possible = ["aya", "ye", "woo", "ma"]
    var result = ""
    var lastWord = ""
    
    
    for i in word.map({String($0)}) {
        result += i
        print(result)

        if possible.contains(result) && result != lastWord {
            lastWord = result
            result = ""
        }
    }
    
    return result.isEmpty
    
    
}