import Foundation

func breadthFirstSearch<T>(graph: AdjacencyListGraph<T>, source: Vertex<T>) -> [Vertex<T>] {
    var source = source
    var queue = Queue<Vertex<T>>()
    var visitedVertices = [source]

    queue.enqueue(source)
    source.isVisited = true
    
    while let vertex = queue.dequeue() {
        for edge in graph.edgesFrom(vertex: vertex) {
            var edgeVertex = edge.to
            
            if !edgeVertex.isVisited {
                queue.enqueue(edgeVertex)
                edgeVertex.isVisited = true
                visitedVertices.append(edgeVertex)
            }
        }
    }
    
    return visitedVertices
}
