let N = Int(readLine()!)!
var heap = MinHeap()

for _ in 0..<N {
    let input = Int(readLine()!)!
    if input == 0 {
        print(heap.remove())
    } else {
        heap.insert(input)
    }
}

struct MinHeap {
    var heap: [Int] = []
    
    mutating func insert(_ x: Int) {
        heap.append(x)
        var i = heap.count - 1
        while i > 0 {
            let parent = (i - 1) / 2
            if heap[parent] <= heap[i] { break }
            heap.swapAt(i, parent)
            i = parent
        }
    }
    
    mutating func remove() -> Int {
        if heap.isEmpty { return 0 }
        if heap.count == 1 { return heap.removeLast() }
        
        let minVal = heap[0]
        heap[0] = heap.removeLast()
        
        var i = 0
        while true {
            let left = i * 2 + 1, right = i * 2 + 2
            var smallest = i
            if left < heap.count && heap[left] < heap[smallest] {
                smallest = left
            }
            if right < heap.count && heap[right] < heap[smallest] {
                smallest = right
            }
            if smallest == i { break }
            heap.swapAt(i, smallest)
            i = smallest
        }
        return minVal
    }
}