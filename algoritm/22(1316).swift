//
//  22(1316).swift
//  algoritm
//
//  Created by 구자윤 on 2023/05/14.
//

import Foundation

/**
let N = Int(readLine()!)!

var inputs: [String] = []

for _ in 0..<N {
    inputs.append(readLine()!)
}

let answer = inputs.reduce(0) { partialResult, input in
    
    let inputCount = input.count
    
    for i in 0..<inputCount - 1 {
        let targetIndex = input.index(input.startIndex, offsetBy: i)
        let target = input[targetIndex]
        
        let compareIndex = input.index(targetIndex, offsetBy: 1)
        let compare = input[compareIndex]
        
        if (target == compare) {
            continue
        }
        
        for j in i+2..<inputCount {
            let anotherIndex = input.index(input.startIndex, offsetBy: j)
            let anotherCompare = input[anotherIndex]
            
            if (target == anotherCompare) {
                return partialResult
            }
        }
    }
    
    return partialResult + 1
}

print(answer)

 
 */

/**

let N = Int(readLine()!)!

var inputs: [String] = []

for _ in 0..<N {
    inputs.append(readLine()!)
}

let answer = inputs.reduce(0) { partialResult, input in
    
    var setData  = Set<Character>()
    setData.insert(input.first!)
    
    for i in 0..<input.count - 1 {
        let targetIndex = input.index(input.startIndex, offsetBy: i)
        let compareIndex = input.index(targetIndex, offsetBy: 1)
        
        let target = input[targetIndex]
        let compare = input[compareIndex]
        
        if (target != compare) {
            if (setData.contains(compare)) {
                return partialResult
            } else {
                setData.insert(compare)
            }
        }
    }
    
    return partialResult + 1
}
 */
