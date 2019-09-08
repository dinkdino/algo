import Foundation

public struct Heap<T> {
    
    var nodes = [T]()
    
    var orderCriteria: (T, T) -> Bool
    
    public init(sort: @escaping (T, T) -> Bool) {
        self.orderCriteria = sort
    }
    
    public init(array: [T], sort: @escaping (T, T) -> Bool) {
        self.orderCriteria = sort
        buildHeap(from: array)
    }
    
    private mutating func buildHeap(from array: [T]) {
        nodes = array
        for i in stride(from: (nodes.count/2) - 1, through: 0, by: -1) {
            sink(i)
        }
    }
    
    private func parentIndex(of index: Int) -> Int {
        return (index - 1)/2
    }
    
    private func leftChildIndex(of index: Int) -> Int {
        return (2 * index) + 1
    }
    
    private func rightChildIndex(of index: Int) -> Int {
        return (2 * index) + 2
    }
    
    mutating func insert(_ node: T) {
        nodes.append(node)
        swim(nodes.count - 1)
    }
    
    mutating func remove() -> T? {
        guard !nodes.isEmpty else { return nil }
        
        if nodes.count == 1 {
            return nodes.removeLast()
        }
        
        nodes.swapAt(0, nodes.count - 1)
        let value = nodes.removeLast()
        sink(0)
        
        return value
    }
    
    private mutating func swim(_ index: Int) {
        var childIndex = index
        let child = nodes[childIndex]
        var parentIndex = self.parentIndex(of: childIndex)
        
        while childIndex != 0 && orderCriteria(child, nodes[parentIndex]) {
            nodes[childIndex] = nodes[parentIndex]
            childIndex = parentIndex
            parentIndex = self.parentIndex(of: childIndex)
        }
        
        nodes[childIndex] = child
    }
    
    private mutating func sink(from index: Int, until endIndex: Int) {
        let leftChildIndex = self.leftChildIndex(of: index)
        let rightChildIndex = self.rightChildIndex(of: index)
        
        var first = index
        
        if leftChildIndex < endIndex && orderCriteria(nodes[leftChildIndex], nodes[first]) {
            first = leftChildIndex
        }
        
        if rightChildIndex < endIndex && orderCriteria(nodes[rightChildIndex], nodes[first]) {
            first = rightChildIndex
        }
        
        if first == index { return }
        
        nodes.swapAt(index, first)
        
        sink(from: first, until: endIndex)
    }
    
    private mutating func sink(_ index: Int) {
        sink(from: index, until: self.nodes.count)
    }
    
    public mutating func sort() -> [T] {
        for i in stride(from: nodes.count - 1, through: 1, by: -1) {
            nodes.swapAt(0, i)
            sink(from: 0, until: i)
        }
        
        return nodes
    }
}

extension Heap: CustomStringConvertible {
    
    public var description: String {
        return "\(nodes)"
    }
}
