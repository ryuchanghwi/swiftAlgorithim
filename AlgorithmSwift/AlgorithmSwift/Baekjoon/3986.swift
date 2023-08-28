//
//  3986.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/28.
//

import Foundation

let inputCount = Int(readLine()!)!
var result = 0

for _ in 0..<inputCount {
    var stack: [String] = []
    
    let alphabets = readLine()!.map { String($0) }
    for i in 0..<alphabets.count {
        if let last = stack.last, last == alphabets[i] {
            stack.removeLast()
        }
        else {
            stack.append(alphabets[i])
        }
    }
    if stack.isEmpty {
        result += 1
    }
}

print(result)
