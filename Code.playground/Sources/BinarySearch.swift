import Foundation

public func binarySearch(_ nums: [Int], item: Int, low: Int, high: Int) -> Int? {
    
    if low >= high {
        return nil
    }
    
    let mid = low + (high - low) / 2
    let midVal = nums[mid]
    print(high)
    
    if item < midVal {
        return binarySearch(nums, item: item, low: low, high: mid)
    } else if item > midVal {
        return binarySearch(nums, item: item, low: mid + 1, high: high)
    } else {
        return mid
    }

}
