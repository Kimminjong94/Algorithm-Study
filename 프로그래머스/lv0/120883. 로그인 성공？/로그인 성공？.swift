import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    
    for i in db {
            if i == id_pw {
            return "login"
        } else if i[0] == id_pw[0] && i[1] != id_pw[1] {
            return "wrong pw"
        }
    }
    return "fail"
}