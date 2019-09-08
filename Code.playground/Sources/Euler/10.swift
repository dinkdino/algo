import Foundation

fileprivate func isPrime(_ n: Int) -> Bool {
    
    for i in 2..<(Int(sqrt(Double(n))) + 1) {
        if n % i == 0 {
            return false
        }
    }
    
    return true
}

func euler10(_ n: Int) -> Int {
    var sum = 0
    for i in 2..<n {
        if isPrime(i) {
            sum += i
        }
    }
    
    return sum
}
