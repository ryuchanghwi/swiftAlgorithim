//
//  두 정수의 합.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/22.
//

import Foundation
/*
 1.두 정수 사이의 합
 */
func solution(_ a:Int, _ b:Int) -> Int64 {
    var intValue = [a, b].sorted()
    return Int64((intValue[0]...intValue[1]).reduce(0, +))
}
