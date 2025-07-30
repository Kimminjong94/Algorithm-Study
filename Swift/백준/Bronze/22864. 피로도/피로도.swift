let n = readLine()!.split(separator: " ").map {Int($0)!}

let fatigue = n[0]
let workPerHour = n[1]
let rest = n[2]
let maxFatigue = n[3]

var nowFatigue = 0
var totalWorked = 0

for time in 0..<24 {
    if nowFatigue + fatigue <= maxFatigue {
        totalWorked += workPerHour
        nowFatigue += fatigue
    } else {
        if nowFatigue - rest >= 0 {
            nowFatigue -= rest
        } else {
            nowFatigue = 0
        }
    }
}

print(totalWorked)
