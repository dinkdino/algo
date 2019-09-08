import Foundation

func euler3() {
    let num = 600851475143
    
    outerLoop: for i in (1..<Int(sqrt(Double(num)))).reversed() {
        if num % i == 0 {
            for j in 2..<i {
                if i % j == 0 {
                    continue outerLoop
                }
            }
            print(i)
            break
        }
    }
}
