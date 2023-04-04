import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    
    var newCard1 = cards1
    var newCard2 = cards2
    var newGoal = goal
    
    for value in goal {
        if newCard1.first == value {
            newCard1.removeFirst()
            newGoal.removeFirst()
        } else if newCard2.first == value {
            newCard2.removeFirst()
            newGoal.removeFirst()

        }
    }
    
    return newGoal.isEmpty ? "Yes" : "No"
}