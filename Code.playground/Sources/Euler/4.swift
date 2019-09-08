import Foundation

func isPalindrome(num: Int) -> Bool {
    let str = "\(num)"
    return str == String(str.reversed())
}


func largestPalindrone() -> Int {
    var max = 999
    for i in (1...999).reversed() {
        for j in (1...999).reversed() {
            let prod = i * j
            if isPalindrome(num: prod) && prod > max{
                max = prod
            }
        }
    }
    
    return max
}
