import Foundation


func eul() {
    var maxChain = 0
    var result = 0
    
    let num = 1000000
    var chainCache = Array(repeating: 0, count: num)
    chainCache[1] = 1
    
    for i in 2..<num {
        var n = i
        var count = 1
        
        while n != 1 && n >= i {
            
            if n % 2 == 0 {
                n /= 2
            } else {
                n = (n * 3) + 1
            }
            
            count += 1
        }
        
        chainCache[i] = count + chainCache[n]
        
        if chainCache[i] > maxChain {
            maxChain = chainCache[i]
            result = i
        }
    }
    
    print(result)
    print(maxChain)

}
