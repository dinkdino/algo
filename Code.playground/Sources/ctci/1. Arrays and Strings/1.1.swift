import Foundation

// 1.1 Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you
//  cannot use additional data structures?

public func isUniqueString(str: String) -> Bool {
    
    guard str.count <= 128 else { return false }
    
    var charSet = [Character: Bool]()
    for char in str {
        if charSet[char] != nil {
            return false
        }
        charSet[char] = true
    }
    return true
}
