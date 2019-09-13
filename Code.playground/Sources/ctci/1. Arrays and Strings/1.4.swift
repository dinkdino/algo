import Foundation


// Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation
// is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.
// EXAMPLE
// Input: Tact Coa
// Output: True (permutations: "taco cat". "atco cta". etc.)

public func isPalindromePermutation(str: String) -> Bool {
    
    var charSet = [Character: Int]()
    for char in str {
        if charSet[char] == nil {
            charSet[char] = 0
        } else {
            charSet[char]! += 1
        }
    }
    
    var foundOdd = false
    for (char, count) in charSet {
        if count % 2 != 0 {
            if foundOdd {
                return false
            }
            foundOdd = true
        }
    }
    
    return true
}
