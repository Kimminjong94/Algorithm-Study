import Foundation

var stack = [Int]()
func solution() {
    let cnt = Int(readLine()!)!
    
    for _ in 1...cnt {
        let value = readLine()!.split(separator: " ").map{ String($0) }
        switch value[0] {
        case "push":
            push(Int(value[1])!)
            break
        case "pop":
            print(pop())
            break
        case "size":
            print(size())
            break
        case "empty":
            print(empty())
            break
        case "top":
            print(top())
            break
        default:
            break
        }
    }
}

func push(_ value: Int) {
    stack.append(value)
}

func pop() -> Int {
    if let pop = stack.popLast() {
        return pop
    } else {
        return -1
    }
}

func top() -> Int{
    if let topValue = stack.last {
        return topValue
    } else {
        return -1
    }
}

func size() -> Int{
    let size = stack.count
    return size
}

func empty() -> Int{
    if stack.isEmpty {
        return 1
    } else {
        return 0
    }
}

solution()