import Foundation

fileprivate func isPrime(_ n: Int) -> Bool {
    
    for i in 2...Int(sqrt(Double(n)) + 1) {
        if n % i == 0 {
            return false
        }
    }
    
    return true
}

func primeIndex(for n: Int) -> Int {
    var primeIndex = 0
    var i = 2
    repeat {
        if isPrime(i) {
            primeIndex += 1
        }
        
        if primeIndex == n {
            return i
        }
        i += 1
        
    } while true
}
