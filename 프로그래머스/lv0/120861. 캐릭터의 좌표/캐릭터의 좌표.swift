import Foundation

enum Direction: String {
    case left
    case right
    case up
    case down
}

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {

    var coordination: [Int] = [0,0]

    for key in keyinput {
        
        switch Direction(rawValue: key) {
        case .left:
            coordination[0] -= 1
        case .right:
            coordination[0] += 1
        case .up:
            coordination[1] += 1
        case .down:
            coordination[1] -= 1
        default:
            print("nothing")
       
        }
        
        if abs(coordination[0] * 2) > abs(board[0]) {
            coordination[0] = coordination[0] > 0 ? (board[0]-1)/2 : -(board[0]-1)/2
        } else if abs(coordination[1] * 2) > abs(board[1]) {
            coordination[1] = coordination[1] > 0 ? (board[1]-1)/2 : -(board[1]-1)/2
        }
        
        
    }
    
   
    return coordination
}