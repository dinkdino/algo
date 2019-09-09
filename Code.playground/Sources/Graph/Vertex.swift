import Foundation

struct Vertex<T: Hashable> {
    
    var data: T
    var index: Int
    
    var isVisited = false
}

extension Vertex: CustomStringConvertible {
    
    var description: String {
        "\(index): \(data)"
    }
}

extension Vertex: Hashable {
    
    static func ==<T>(lhs: Vertex<T>, rhs: Vertex<T>) -> Bool {
        return lhs.data == rhs.data && lhs.index == rhs.index
    }
}
