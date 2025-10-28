import Foundation

func solution(_ record:[String]) -> [String] {
    var answer: [String] = []
    var logs: [[String]] = []
    var uidToNickname: [String: String] = [:]
    
    for line in record {
        let parts = line.split(separator: " ").map { String($0) }
        let command = parts[0]
        let uid = parts[1]
        
        if command == "Enter" || command == "Change" {
            let nickName = parts[2]
            uidToNickname[uid] = nickName
        }
        
        if command == "Enter" || command == "Leave" {
            logs.append([command, uid])
        }
    }
    
    for log in logs {
        let command = log[0]
        let uid = log[1]
        let nickName = uidToNickname[uid]!
        
        if command == "Enter" {
            answer.append("\(nickName)님이 들어왔습니다.")
        } else if command == "Leave" {
            answer.append("\(nickName)님이 나갔습니다.")
        }
    }
    
    return answer
}


