//
//  나누어 떨어지는 숫자 배열.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/23.
//

import Foundation
/*
 1.나누어 떨어지는 숫자 배열
 */
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = arr.filter { value in
        value %  divisor == 0
    }.sorted()
    return result.count == 0 ? [-1] : result
}
