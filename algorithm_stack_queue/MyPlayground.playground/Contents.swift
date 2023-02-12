import Cocoa

struct MinStack {
    private var stack = [Int]()
    private var mins = [Int]()
    mutating func push(_ element: Int) {
        stack.append(element)
        if let min = mins.last, min < element {
            mins.append(min)
        } else {
            mins.append(element)
        }
    }
    mutating func pop() -> Int? {
        mins.popLast()
        return stack.popLast()
    }
    func min() -> Int? {
        return mins.last
    }
}
func findMinimumOfSubarrays(ofSize m: Int, in array: [Int]) -> [(subArray: [Int], minimum: Int)] {
    guard array.count >= m else { return [] }
    var minValues = [(subArray: [Int], minimum: Int)]()
    var queue = [Int]()
    for i in 0..<m { // first fill the queue with first subarray elements
        while !queue.isEmpty && array[i] <= array[queue.last!] { // remove all elements that are greater than current one
            queue.removeLast() // remove last element from the queue
        }
        queue.append(i) // add index of current element to the queue
    }
    minValues.append((subArray: Array(array[0..<m]), minimum: array[queue.first!])) // add minimum of first subarray to result array
    for i in m..<array.count { // iterate over all other elements
        if queue.first! == i - m { // if first element is out of range of current subarray
            queue.removeFirst() // remove it from the queue
        }
        while !queue.isEmpty && array[i] <= array[queue.last!] { // remove all elements that are greater than current one
            queue.removeLast() // remove last element from the queue
        }
        queue.append(i) // add index of current element to the queue
        minValues.append((subArray: Array(array[i-m+1..<i+1]), minimum: array[queue.first!])) // add minimum of current subarray to result array
    }
    return minValues
}

var intList = [9,23,4,5,23,4,3,1,2]

print(findMinimumOfSubarrays(ofSize: 4, in: intList))

