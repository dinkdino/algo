import Foundation

public class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode<T>?
    var previous: LinkedListNode<T>?
    
    public init(_ value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    typealias Node = LinkedListNode
    
    var head: Node<T>?
    var tail: Node<T>?
    
    var isEmpty: Bool {
        head == nil
    }
    
    var last: Node<T>? {
        guard var node = head else {
            return nil
        }
        
        while let next = node.next {
            node = next
        }
        
        return node
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
        
        var node = head!
        for _ in 1...index {
            if let next = node.next {
                node = next
            } else {
                break
            }
        }
        
        return node
    }
    
    subscript(index: Int) -> Node<T> {
        let node = self.node(at: index)
        return node
    }
    
    func append(_ node: Node<T>) {
        if isEmpty {
            head = node
        } else {
            node.previous = last
            last?.next = node
        }
    }
    
    func append(_ value: T) {
        let node = Node<T>(value)
        append(node)
    }
    
    func insert(_ node: Node<T>, at index: Int) {
        if index == 0 {
            node.next = head
            head?.previous = node
            head = node
        } else {
            let prev = self.node(at: index - 1)
            let next = prev.next
            node.previous = prev
            node.next = next
            prev.next = node
            next?.previous = node
        }
    }
}
