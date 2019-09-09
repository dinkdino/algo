import Foundation

class AdjacencyListGraph<T: Hashable> {
    
    var adjacencyList = [EdgeList<T>]()
    
    var vertices: [Vertex<T>] {
        adjacencyList.map { $0.vertex }
    }
    
    var edges: [Edge<T>] {
        var edgeSet = Set<Edge<T>>()
        
        for list in adjacencyList {
            guard let edges = list.edges else { continue }
            
            for edge in edges {
                edgeSet.insert(edge)
            }
        }
        
        return Array(edgeSet)
    }
    
    func createVertex(_ data: T) -> Vertex<T> {
        
        let matchingVertices = vertices.filter { $0.data == data }
        
        if let matchingVertex = matchingVertices.last {
            return matchingVertex
        }
        
        let vertex = Vertex(data: data, index: vertices.count)
        adjacencyList.append(EdgeList(vertex: vertex))
        
        return vertex
    }
    
    func addDirectedEdge(from: Vertex<T>, to: Vertex<T>, withWeight weight: Double?) {
        let edge = Edge(from: from, to: to, weight: weight)
        let edgeList = adjacencyList[from.index]
        
        if edgeList.edges == nil {
            edgeList.edges = [edge]
        } else {
            edgeList.addEdge(edge)
        }
    }
    
    func addUndirectedEdge(between vertices: (Vertex<T>, Vertex<T>), withWeight weight: Double?) {
        addDirectedEdge(from: vertices.0, to: vertices.1, withWeight: weight)
        addDirectedEdge(from: vertices.1, to: vertices.0, withWeight: weight)
    }
    
    func edgesFrom(vertex: Vertex<T>) -> [Edge<T>] {
        return adjacencyList[vertex.index].edges ?? []
    }
}
