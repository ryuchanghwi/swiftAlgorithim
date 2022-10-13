//
//  짝수의 합.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/12.
//

import Foundation
func solution(_ n:Int) -> Int {
    var result = (0...n).filter { value in
        return value % 2 == 0
    }.reduce(0, +)
    return result
}
