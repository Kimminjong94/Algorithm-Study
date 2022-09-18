
func getPriority(ch: Character) -> Int{
    switch ch {
    case "+":
        return 1
    case "-":
        return 1
    case "*":
        return 2
    case "/":
        return 2
    case "(":
        return 0
    default:
        break
    }
    return 0
}

let input = Array(readLine()!)
var ans = [Character]()
var stack = [Character]()

for ch in input {
    if ch.isLetter {
        ans.append(ch)
    } else {
        //(까지 다뽑기
        if ch == "(" {
            stack.append(ch)
        } else if ch == ")" {
            while true {
                let popData = stack.removeLast()
                if popData == "(" {break}
                ans.append(popData)
            }
        } else if stack.isEmpty || getPriority(ch: stack.last!) < getPriority(ch: ch) {
            //stack이 비어있거나, 지금 들어갈 우선순위가 더 크다면 push
            stack.append(ch)
        } else {
            while !stack.isEmpty {
                let top = stack.last!
                if getPriority(ch: top) >= getPriority(ch: ch) {
                    let popData = stack.removeLast()
                    ans.append(popData)
                } else {
                    break
                }
            }
            stack.append(ch)
        }
    }
}
while !stack.isEmpty {
    ans.append(stack.removeLast())
}

print(String(ans))