//
//  나머지가 1이 되는 숫자.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/20.
//

import Foundation
/*
 1단계 나머지가 1이 되는 수 찾기
 */
func solution(_ n:Int) -> Int {
    let nMinusOne = n - 1
    var result = 0
    for i in 2...nMinusOne {
        if nMinusOne % i == 0 {
            result = i
            break
        }
    }
    return result
}
