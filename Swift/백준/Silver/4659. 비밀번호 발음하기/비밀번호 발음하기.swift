while true {
    let input = readLine()!
    guard input != "end" else { break }

    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    let arr = Array(input)

    var hasVowel = false
    var isThreeInARow = true
    var isRepeatAllowed = true

    var vowelCount = 0
    var consonantCount = 0
    var beforeChar: Character? = nil

    for char in arr {
        if vowels.contains(char) {
            hasVowel = true
            vowelCount += 1
            consonantCount = 0
        } else {
            consonantCount += 1
            vowelCount = 0
        }

        if vowelCount == 3 || consonantCount == 3 {
            isThreeInARow = false
        }

        if let before = beforeChar {
            if before == char && !(before == "e" || before == "o") {
                isRepeatAllowed = false
            }
        }
        beforeChar = char
    }

    if hasVowel && isThreeInARow && isRepeatAllowed {
        print("<\(input)> is acceptable.")
    } else {
        print("<\(input)> is not acceptable.")
    }
}