import Foundation

struct MinHeap {
    private var heap = [Int]()

    var isEmpty: Bool { heap.isEmpty }

    mutating func insert(_ value: Int) {
        heap.append(value)
        var index = heap.count - 1
        while index > 0 {
            let parent = (index - 1) / 2
            if heap[parent] <= heap[index] { break }
            heap.swapAt(parent, index)
            index = parent
        }
    }

    mutating func pop() -> Int {
        guard !heap.isEmpty else { return 0 }
        if heap.count == 1 {
            return heap.removeFirst()
        }

        let minValue = heap[0]
        heap[0] = heap.removeLast()
        var index = 0

        while true {
            let left = index * 2 + 1
            let right = index * 2 + 2
            var smallest = index

            if left < heap.count && heap[left] < heap[smallest] {
                smallest = left
            }
            if right < heap.count && heap[right] < heap[smallest] {
                smallest = right
            }
            if smallest == index { break }

            heap.swapAt(index, smallest)
            index = smallest
        }
        return minValue
    }
}

let N = Int(readLine()!)!
var heap = MinHeap()
var result = ""

for _ in 0..<N {
    let x = Int(readLine()!)!
    if x == 0 {
        result += "\(heap.pop())\n"
    } else {
        heap.insert(x)
    }
}

print(result)