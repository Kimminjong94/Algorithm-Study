import Foundation


func solution(_ s:String) -> Int {
    
    let n = s.count
    if n == 1 { return 1 } // 한 글자인 경우 바로 리턴

    var compressionLengthArray: [Int] = []

    // 1 ~ n/2까지 단위로 나누어 압축 시도
    for splitSize in stride(from: 1, through: n / 2, by: 1) {
        var compressed = ""
        var splited: [String] = []

        // splitSize 단위로 문자열 쪼개기
        var i = s.startIndex
        while i < s.endIndex {
            let end = s.index(i, offsetBy: splitSize, limitedBy: s.endIndex) ?? s.endIndex
            let sub = String(s[i..<end])
            splited.append(sub)
            i = end
        }

        var count = 1
        for j in 0..<(splited.count - 1) {
            let cur = splited[j]
            let next = splited[j + 1]
            if cur == next {
                count += 1
            } else {
                if count > 1 {
                    compressed += "\(count)\(cur)"
                } else {
                    compressed += cur
                }
                count = 1
            }
        }

        // 마지막 문자열 처리
        if count > 1 {
            compressed += "\(count)\(splited.last!)"
        } else {
            compressed += splited.last!
        }

        compressionLengthArray.append(compressed.count)
    }

    return compressionLengthArray.min() ?? n
}
