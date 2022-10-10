//
//  내적.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/10.
//

import Foundation
/*
 a 혹은 b 배열을 순회하면서 나머지 배열의 index로 접근해 값을 곱한다.
 */
func solution(_ a:[Int], _ b:[Int]) -> Int {
    var bIndex = 0
    var result = 0
    for i in a {
        result += i * b[bIndex]
        bIndex += 1
    }
    return result
}
