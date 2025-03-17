//
//  2559(수열.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 3/16/25.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let totalCount = input[0]
let sumCount = input[1]

let intArray = readLine()!.split(separator: " ").map { Int($0)!}

var startSumValue = 0

for i in 0..<sumCount {
    startSumValue += intArray[i]
}
var result = startSumValue

for i in 0..<totalCount {
    if i + sumCount == totalCount {
        break
    }

    startSumValue += intArray[i + sumCount]
    startSumValue -= intArray[i]
    
    result = max(result, startSumValue)
}
print(result)
