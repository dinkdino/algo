import Foundation

func euler9() -> Int {
    for a in 1...500 {
        for b in 1...(1000-a) {
            let c = 1000 - (a + b)
            
            if a * a + b * b == c * c {
                return a * b * c
            }
        }
    }
    
    return 0
}
