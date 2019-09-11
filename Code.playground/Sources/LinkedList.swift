import Foundation

class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode<T>?
    var previous: LinkedListNode<T>?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    typealias Node = LinkedListNode
    
    var head: Node<T>?
    var tail: Node<T>?
    
    var isEmpty: Bool {
        head == nil
    }
    
    var count: Int {
        guard var node = head else {
            return 0
        }
        
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        
        return count
    }
    
    func node(at index: Int) -> Node<T> {
        assert(head != nil, "List is empty")
        assert(index >= 0, "Index must be non negative")
        
        if index == 0 {
            return head!
        }
        
        var node = head
        for _ in 1...index {
            if let next = node.next {
                node = next
            } else {
                break
            }
        }
        
        assert(node != nil, "Index out of bounds")
        return node!
    }
    
    subscript(index: Int) -> T {

        let node = node(at: index)
    }
}
