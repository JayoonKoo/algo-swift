//
//  19(11720).swift
//  algoritm
//
//  Created by 구자윤 on 2023/05/12.
//

import Foundation

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


print(answer)
