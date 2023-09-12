//
//  17298.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/10.
//

import Foundation


let A = Int(readLine()!)! // 수열 A의 크기

let aArr = readLine()!.split(separator: " ").map { Int($0)! }

var stack = [Int]()
var result: [Int] = Array(repeating: -1, count: A)

for i in 0..<A {
    while !stack.isEmpty && aArr[stack.last!] < aArr[i] {
        result[stack.removeLast()] = aArr[i]
    }
    stack.append(i) //인덱스를넣기 값을 넣을
}

print(result.map { String($0)}.joined(separator: " "))
