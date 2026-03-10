import Foundation

let N = Int(readLine()!)!

var students : [[String]] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{String($0)}
    students.append(input)
}


let sortedStudentsByYear = students.sorted { (student1, student2) -> Bool in
    let student1Year = Int(student1[3])!
    let sutdent2Year = Int(student2[3])!
    
    let student1Month = Int(student1[2])!
    let sutdent2Month = Int(student2[2])!
    
    let student1Day = Int(student1[1])!
    let sutdent2Day = Int(student2[1])!
    
    if student1Year < sutdent2Year {
        return true
    } else if student1Year == sutdent2Year {
        if student1Month < sutdent2Month {
            return true
        } else if student1Month == sutdent2Month {
            if student1Day < sutdent2Day {
                return true
            }
        }
    }
    return false
}

print(sortedStudentsByYear.last![0])
print(sortedStudentsByYear.first![0])