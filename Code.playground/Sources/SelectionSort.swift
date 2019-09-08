import Foundation


public func selectionSort(_ nums: [Int]) -> [Int] {
    
    var nums = nums
    
    for i in 0..<nums.count {
        
        // Find min
        var minIndex = i
        for j in i+1..<nums.count {
            if nums[j] < nums[minIndex] {
                minIndex = j
            }
        }

        // Swap
        let temp = nums[i]
        nums[i] = nums[minIndex]
        nums[minIndex] = temp
    }
    
    return nums
}
