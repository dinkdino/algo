import Foundation

class EdgeList<T: Hashable> {
    
    var vertex: Vertex<T>
    var edges: [Edge<T>]?
    
    init(vertex: Vertex<T>) {
        self.vertex = vertex
    }
    
    func addEdge(_ edge: Edge<T>) {
        edges?.append(edge)
    }
}
