import Foundation
import XCTest

public class LinkedListTests: XCTestCase {
    
    let numbers = [3,7,1,10,4,5,9,2]
    
    func buildList() -> LinkedList<Int> {
        let list = LinkedList<Int>()
        
        for num in numbers {
            list.append(num)
        }
        
        return list
    }
    
    func testEmpty() {
        let list = LinkedList<Int>()
        XCTAssertTrue(list.isEmpty)
    }
    
    func testRemoveDuplicates() {
        var list = buildList()
        list.append(1)
        list.append(4)
        
        
    }
}

func removeDups<T: Hashable>(list: LinkedList<T>) -> LinkedList<T> {
    
    var cache = [T: Bool]()
    var node = list.head
    var prev = node
    
    while node!.next != nil {
        if cache[node!.value] != nil {
            prev!.next = node!.next
            node!.next?.previous = prev
        } else {
            cache[node!.value] = true
            prev = node!
        }
        
        node = node!.next
    }
    
    return list
}
