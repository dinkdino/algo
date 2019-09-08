import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    
    if a == 0 {
        return b
    }
    
    return gcd(b % a, a)
}

func lcm(_ n: Int) -> Int {
    
    var lcm = 1
    for i in 2...n {
        lcm = (i * lcm) / gcd(i, lcm)
    }
    
    return lcm
}
