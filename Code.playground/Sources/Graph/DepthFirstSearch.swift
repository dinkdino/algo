import Foundation

func depthFirstSearch<T>(graph: AdjacencyListGraph<T>, source: Vertex<T>) -> [Vertex<T>] {
    var source = source
    var visitedVertices = [source]
    source.isVisited = true
    
    for edge in graph.edgesFrom(vertex: source) {
        let vertex = edge.to
        if !vertex.isVisited {
            visitedVertices += breadthFirstSearch(graph: graph, source: vertex)
        }
    }
    
    return visitedVertices
}
