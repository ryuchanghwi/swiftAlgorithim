//
//  1325.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/10.
//

import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var parentChildArray = Array(repeating: [Int](), count: N + 1)[ [빈값] [] [] [] ]

var resultCount = Array(repeating: 0, count: N + 1) // 해킹할 수 있는 결과를 배열에 저장

for _ in 0..<M {
    let parentChildNode = readLine()!.split(separator: " ").map { Int($0)! }
    
    let parentNode = parentChildNode[1]
    let childNode = parentChildNode[0]
    
    parentChildArray[parentNode].append(childNode)
}



func bfs(root: Int) -> Int {
    var count = 0
    var checkArray = Array(repeating: false, count: N + 1)
    
    var queue = [Int]()
    queue.append(root)
    
    
    while !queue.isEmpty {
        let fifo = queue.removeFirst()
        
        for i in parentChildArray[fifo] {
            if checkArray[i] == false {
                checkArray[i] = true
                count += 1
                queue.append(i)
            }
        }
    }
    return count
}


var result = [Int]()
var maxValue = 0
for i in 1..<parentChildArray.count { []
    let count = bfs(root: i)
    maxValue = max(maxValue, count)
    
    if count == maxValue {
        result.append(i)
    }
    else if count > maxValue {
        result.removeAll()
        result.append(i)
    }
}


print(result.map { String($0) }.joined(separator: " "))
