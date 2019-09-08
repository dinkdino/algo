import Foundation

public struct Queue<Element> {
    
    private var list = [Element?]()
    private var head = 0
    
    var count: Int {
        return list.count - head
    }
    
    var isEmpty: Bool {
        return count == 0
    }
    
    mutating func enqueue(_ item: Element) {
        list.append(item)
    }
    
    mutating func dequeue() -> Element? {
        guard !isEmpty, let element = list[head] else { return nil }
        
        list[head] = nil
        head += 1
        
        let percentage = Float(head)/Float(list.count)
        if percentage > 0.25 && list.count > 50 {
            list.removeFirst(head)
            head = 0
        }
        
        return element
    }
}
