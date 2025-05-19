var students = Array(1...30)

// 28명의 제출자 번호를 입력받음
for _ in 0..<28 {
    if let n = readLine(), let num = Int(n) {
        // 제출한 학생 번호를 배열에서 제거
        if let index = students.firstIndex(of: num) {
            students.remove(at: index)
        }
    }
}

// 남은 두 학생 번호를 오름차순으로 정렬
students.sort()

// 출력
print(students[0])
print(students[1])