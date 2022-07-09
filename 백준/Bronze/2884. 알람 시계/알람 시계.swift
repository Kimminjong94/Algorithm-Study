let time = readLine()!

let timeArr = time.split(separator: " ")

var hour = Int(timeArr[0])!
var min = Int(timeArr[1])!
min -= 45
if min < 0 {
  hour -= 1
  min += 60 
}

if hour < 0 {
  hour += 24
}

print("\(hour) \(min)")