import Foundation

public func mergeSort<T: Comparable>(_ list: [T]) -> [T] {
    
    guard list.count > 1 else { return list } // Exit condition
    
    let mid = list.count/2
    let leftArray = mergeSort(Array(list[0..<mid]))
    let rightArray = mergeSort(Array(list[mid..<list.count]))
    
    return merge(leftArray, rightArray)
}

func merge<T: Comparable>(_ leftArray: [T], _ rightArray: [T]) -> [T] {
    
    var i = 0
    var j = 0
    
    var result = [T]()
    result.reserveCapacity(leftArray.count + rightArray.count)
    
    while i < leftArray.count && j < rightArray.count {
        if leftArray[i] < rightArray[j] {
            result.append(leftArray[i])
            i += 1
        } else if rightArray[j] < leftArray[i] {
            result.append(rightArray[j])
            j += 1
        } else {
            result.append(leftArray[i])
            result.append(rightArray[j])
            i += 1
            j += 1
        }
    }
    
    while i < leftArray.count {
        result.append(leftArray[i])
        i += 1
    }
    
    while j < rightArray.count {
        result.append(rightArray[j])
        j += 1
    }
    
    return result
}
