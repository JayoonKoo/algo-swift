import Foundation

/**
let N = Int(readLine()!)!

var inputs : [(Int, Int)] = []
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    inputs.append((input[0], input[1]))
}

inputs.sort { a, b in
    if a.1 < b.1 {
        return true
    } else if a.1 == b.1 {
        if a.0 < b.0 {
            return true
        } else {
            return false
        }
    }
    
    return false
}

inputs.forEach { answer in
    print("\(answer.0) \(answer.1)")
}
 
 */
