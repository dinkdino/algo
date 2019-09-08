import Foundation

func sumOfSquares(_ n: Int) -> Int {
    var res = 0
    for i in 1...n {
        res += i * i
    }
    
    return res
}

func sqOfSums(_ n: Int) -> Int {
    var res = 0
    for i in 1...n {
        res += i
    }
    
    return res * res
}
