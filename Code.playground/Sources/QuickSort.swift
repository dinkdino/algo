import Foundation

public func quickSort<T: Comparable>(_ list: inout [T], low: Int, high: Int) {
    if low < high {
        let pivot = partition(&list, low: low, high: high)
        quickSort(&list, low: low, high: pivot - 1)
        quickSort(&list, low: pivot + 1, high: high)
    }
}

func partition<T: Comparable>(_ list: inout [T], low: Int, high: Int) -> Int {
    let pivot = list[high]
    
    var i = low
    for j in i..<high {
        if list[j] < pivot {
            (list[i], list[j]) = (list[j], list[i])
            i += 1
        }
    }
    
    (list[i], list[high]) = (list[high], list[i])
    return i
}
