import Foundation

func solution(_ word: String) -> Int {
    let chars: [Character] = ["A", "E", "I", "O", "U"]
    let weights = [781, 156, 31, 6, 1]

    var result = 0

    for (i, ch) in word.enumerated() {
        if let idx = chars.firstIndex(of: ch) {
            result += idx * weights[i] + 1
        }
    }

    return result
}

