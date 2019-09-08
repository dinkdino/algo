import Foundation


func euler1() -> Int {
    
    let num = 1000
    let a = 3
    let b = 5
    
    var res = 0
    for i in min(a, b)..<num {
        if i % a == 0 || i % b == 0 {
            res += i
        }
    }
    
    return res
}
