//
//  두 개 뽑아서 더하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/08.
//

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    let sortedNumbers = Array(numbers.sorted())
    var result: Set<Int> = []
    for i in 0..<numbers.count {
        for j in (i + 1)..<numbers.count {
            result.insert(sortedNumbers[i] + sortedNumbers[j])
        }
    }
    var sortedResult: [Int] = Array(result).sorted()
    return sortedResult
}
