import Foundation

struct Edge<T: Hashable> {
    
    let from: Vertex<T>
    let to: Vertex<T>
    
    let weight: Double?
}

extension Edge: CustomStringConvertible {
    
    var description: String {
        let str = "\(from) -> \(to)"
        guard let weight = weight else { return str }
        return str + " : \(weight)"
    }
}

extension Edge: Hashable {
    
    static func ==(lhs: Edge, rhs: Edge) -> Bool {
        return lhs.from == rhs.from
            && lhs.to == rhs.to
            && lhs.weight == rhs.weight
    }
}
