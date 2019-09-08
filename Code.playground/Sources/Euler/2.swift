import Foundation

func euler2() {
    var a = 1
    var b = 2
    let max = 4000000
    var res = b

    while a + b < max {
        
        let sum = a + b
        a = b
        b = sum
        
        if b % 2 == 0 {
            res += b
        }
    }
}


