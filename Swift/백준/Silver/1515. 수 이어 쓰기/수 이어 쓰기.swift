let target = Array(readLine()!)  // 문자 배열로 저장 (예: "91114" -> ["9","1","1","1","4"])

var idx = 0      // 현재 매칭해야 할 target의 인덱스
var i = 1        // 1부터 시작
outer: while true {
    for ch in String(i) {           // 현재 숫자 i를 문자열로 보고 왼쪽부터 훑기
        if ch == target[idx] {
            idx += 1
            if idx == target.count {
                print(i)
                break outer
            }
        }
    }
    i += 1
}