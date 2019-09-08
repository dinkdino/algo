import Foundation

public func insertionSort(_ nums: [Int]) -> [Int] {
    var nums = nums
    
    for i in 1..<nums.count {
        for j in (1...i).reversed() {
            if nums[j-1] > nums[j] {
                let temp = nums[j-1]
                nums[j-1] = nums[j]
                nums[j] = temp
            } else {
                break
            }
        }
    }
    
    return nums
}
