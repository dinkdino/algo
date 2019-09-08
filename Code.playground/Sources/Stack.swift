import Foundation

struct Stack<T> {
    
    private var list: [T] = [T]()
    
    var count: Int {
        return list.count
    }
    
    var isEmpty: Bool {
        return list.isEmpty
    }
    
    mutating func push(_ item: T) {
        list.append(item)
    }
    
    mutating func pop() -> T? {
        return list.popLast()
    }
    
}
