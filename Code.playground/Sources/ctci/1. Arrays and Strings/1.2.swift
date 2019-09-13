import Foundation

// 1.2 Check Permutation: Given two strings, write a method to decide if one is a permutation of the other.

public func isStringPermutationWithSort(str1: String, str2: String) -> Bool {
    if str1.count != str2.count { return false }
    return str1.sorted() == str2.sorted()
}

public func isStringPermutation(str1: String, str2: String) -> Bool {
    if str1.count != str2.count { return false }
    
    var charSet = [Character: Int]()
    for char in str1 {
        if charSet[char] != nil {
            charSet[char]! += 1
        } else {
            charSet[char] = 1
        }
    }
    
    for char in str2 {
        if charSet[char] != nil {
            charSet[char]! -= 1
            
            if charSet[char]! < 0 {
                return false
            }
            
        } else {
            return false
        }
    }
    
    return true
}
